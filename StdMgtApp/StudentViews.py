from django.http import HttpResponse
from django.shortcuts import render

from StdMgtApp.models import Subjects, AttendanceReport, Students, Courses


def student_home(request):
    return render(request, "student_template/student_home_template.html")


def student_view_attendance(request):
    student = Students.objects.get(admin=request.user.id)
    #course = Courses.objects.get(id=student.course_id.id)
    course = student.course_id
    subjects = Subjects.objects.filter(course_id=course)
    return render(request, "student_template/student_view_attendance.html", {"subjects": subjects})


def student_view_attendance_post(request):
    return HttpResponse("OK")