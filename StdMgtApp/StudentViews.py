import datetime

from django.http import HttpResponse
from django.shortcuts import render

from StdMgtApp.models import Subjects, AttendanceReport, Students, Courses, CustomUser, Attendance


def student_home(request):
    return render(request, "student_template/student_home_template.html")


def student_view_attendance(request):
    student = Students.objects.get(admin=request.user.id)
    # course = Courses.objects.get(id=student.course_id.id)
    course = student.course_id
    subjects = Subjects.objects.filter(course_id=course)
    return render(request, "student_template/student_view_attendance.html", {"subjects": subjects})


def student_view_attendance_post(request):
    subject_id = request.POST.get('subject')
    start_date = request.POST.get('start_date')
    end_date = request.POST.get('end_date')

    start_date_parse = datetime.datetime.strptime(start_date, "%Y-%m-%d").date()
    end_date_parse = datetime.datetime.strptime(end_date, "%Y-%m-%d").date()
    subject_obj = Subjects.objects.get(id=subject_id)
    user_obj = CustomUser.objects.get(id=request.user.id)
    std_obj = Students.objects.get(admin=user_obj)

    attendance = Attendance.objects.filter(attendance_date__range=(start_date_parse, end_date_parse),
                                           subject_id=subject_obj)
    attendance_reports = AttendanceReport.objects.filter(attendance_id__in=attendance, student_id=std_obj)

    #for attendance_report in attendance_reports:
    #    print("Date :" + str(attendance_report.attendance_id.attendance_date),"Status :" + str(attendance_report.status))
    #return HttpResponse("OKie")
    return  render(request,"student_template/student_attendance_data.html",{"attendance_reports":attendance_reports})
