import json

from django.contrib import messages
from django.core import serializers
from django.http import HttpResponse, JsonResponse, HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse
from django.views.decorators.csrf import csrf_exempt

from StdMgtApp.models import Subjects, SessionYearModel, Students, Attendance, AttendanceReport, Staffs, \
    LeaveReportStaff, FeedbackStaffs


def staff_home(request):
    return render(request, "staff_template/staff_home_template.html")


def staff_take_attendance(request):
    subjects = Subjects.objects.filter(staff_id=request.user.id)
    session_years = SessionYearModel.objects.all()
    return render(request, "staff_template/staff_take_attendance_template.html",
                  {"subjects": subjects, "session_years": session_years})


@csrf_exempt
def get_students(request):
    subject_id = request.POST.get("subject")
    session_year = request.POST.get("session_year")

    subject = Subjects.objects.get(id=subject_id)
    sessions_model = SessionYearModel.objects.get(id=session_year)
    students = Students.objects.filter(course_id=subject.course_id, session_year_id=sessions_model)
    # student_data = serializers.serialize("python", students)
    list_data = []
    for student in students:
        data_small = {"id": student.admin.id, "name": student.admin.first_name + " " + student.admin.last_name}
        list_data.append(data_small)
    return JsonResponse(json.dumps(list_data), content_type="application/json", safe=False)


@csrf_exempt
def save_attendance_data(request):
    student_ids = request.POST.get("student_ids")
    # print(student_ids)
    subject_id = request.POST.get("subject_id")
    attendance_date = request.POST.get("attendance_date")
    session_year_id = request.POST.get("session_year_id")

    subject_model = Subjects.objects.get(id=subject_id)
    session_model = SessionYearModel.objects.get(id=session_year_id)
    json_sstudent = json.loads(student_ids)
    # print(data[0]['id'])

    try:
        attendance = Attendance(subject_id=subject_model, session_year_id=session_model,attendance_date=attendance_date)
        attendance.save()

        for stud in json_sstudent:
            student = Students.objects.get(admin=stud['id'])
            attendance_report = AttendanceReport(student_id=student, attendance_id=attendance, status=stud['status'])
            attendance_report.save()
        return HttpResponse("OK")
    except:
        return HttpResponse("ERR")


def staff_update_attendance(request):
        subjects = Subjects.objects.filter(staff_id=request.user.id)
        session_year_id = SessionYearModel.objects.all()
        return render(request,"staff_template/staff_update_attendance_template.html",{"subjects":subjects,"session_year_id":session_year_id})


@csrf_exempt
def get_attendance_dates(request):
    subject = request.POST.get("subject")
    session_year_id = request.POST.get("session_year_id")
    subject_obj = Subjects.objects.get(id=subject)
    session_obj = SessionYearModel.objects.get(id=session_year_id)
    attendance = Attendance.objects.filter(subject_id=subject_obj,session_year_id=session_obj)
    attendance_obj = []
    for attendance_single in attendance:
        data = { "id":attendance_single.id, "attendance_date":str(attendance_single.attendance_date),"session_year_id":attendance_single.session_year_id.id}
        attendance_obj.append(data)
    return JsonResponse(json.dumps(attendance_obj),safe=False)


@csrf_exempt
def get_attendance_student(request):
    attendance_date = request.POST.get("attendance_date")
    attendance = Attendance.objects.get(id=attendance_date)

    attendance_data = AttendanceReport.objects.filter(attendance_id=attendance)
    list_data = []

    for student in attendance_data:
        data_small={"id":student.student_id.admin.id,"name":student.student_id.admin.first_name+" "+student.student_id.admin.last_name,"status":student.status}
        list_data.append(data_small)

    return JsonResponse(json.dumps(list_data),content_type="application/json",safe=False)


@csrf_exempt
def save_updateattendance_data(request):
    student_ids = request.POST.get("student_ids")
    attendance_date = request.POST.get("attendance_date")
    attendance = Attendance.objects.get(id=attendance_date)

    json_sstudent = json.loads(student_ids)
    # print(data[0]['id'])

    try:
        for stud in json_sstudent:
            student = Students.objects.get(admin=stud['id'])
            attendance_report = AttendanceReport.objects.get(student_id=student, attendance_id=attendance)
            attendance_report.status=stud['status']
            attendance_report.save()
        return HttpResponse("OK")
    except:
        return HttpResponse("ERR")


def staff_apply_leave(request):
    staff_obj = Staffs.objects.get(admin=request.user.id)
    leave_data = LeaveReportStaff.objects.filter(staff_id=staff_obj)
    return render(request, "staff_template/staff_apply_leave.html",{"leave_data":leave_data})


def staff_apply_leave_save(request):
    if request.method!="POST":
        return HttpResponseRedirect(reverse("staff_apply_leave"))
    else:
        leave_date = request.POST.get("leave_date")
        leave_msg = request.POST.get("leave_msg")

        staff = Staffs.objects.get(admin=request.user.id)
        try:
            leave_report = LeaveReportStaff(staff_id=staff,leave_date=leave_date,leave_message=leave_msg, leave_status=0)
            leave_report.save()

            messages.success(request, "Leave Applied Successfully")
            return HttpResponseRedirect(reverse("staff_apply_leave"))
        except:
            messages.error(request, "Failed to Apply for Leave")
            return HttpResponseRedirect(reverse("staff_apply_leave"))


def staff_feedback(request):
    staff_obj = Staffs.objects.get(admin=request.user.id)
    feedback_data = FeedbackStaffs.objects.filter(staff_id=staff_obj)
    return render(request,"staff_template/staff_feedback.html", {"feedback_data":feedback_data})


def staff_feedback_save(request):
    if request.method != "POST":
        return HttpResponseRedirect(reverse("staff_feedback_save"))
    else:
        feedback_msg = request.POST.get("feedback_msg")

        staff = Staffs.objects.get(admin=request.user.id)
        try:
            feedback_report = FeedbackStaffs(staff_id=staff, feedback=feedback_msg)
            feedback_report.save()

            messages.success(request, "Your Feedback is Successfully Sent")
            return HttpResponseRedirect(reverse("staff_feedback"))
        except:
            messages.error(request, "Couldn't submit the Feedback")
            return HttpResponseRedirect(reverse("staff_feedback"))