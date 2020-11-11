from django import forms

from StdMgtApp.models import Courses


class DateInput(forms.DateInput):
    input_type = "date"


class AddStudentForm(forms.Form):
    email=forms.EmailField(label="Email",max_length=50, widget=forms.EmailInput())
    firstname=forms.CharField(label="First Name",max_length=50)
    lastname=forms.CharField(label="Last Name",max_length=50)
    username=forms.CharField(label="Username",max_length=50)
    password=forms.CharField(label="Password",max_length=50, widget=forms.PasswordInput())
    address=forms.CharField(label="Address",max_length=50)

    courses = Courses.objects.all()
    course_list=[]
    for course in courses:
        small_course=(course.id,course.name)
        course_list.append(small_course)
    course=forms.ChoiceField(label="Course", choices=course_list)
    gender_choice=(
        ("Male","Male"),
        ("Female","Female")
    )
    sex=forms.ChoiceField(label="Gender", choices=gender_choice)
    session_start=forms.DateField(label="Session Start", widget=DateInput())
    session_end=forms.DateField(label="Session End", widget=DateInput())
    profile_pic=forms.FileField(label="Profile Picture",max_length=50)

