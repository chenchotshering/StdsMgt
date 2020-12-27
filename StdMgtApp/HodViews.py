from django.contrib import messages
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse
from django.views.decorators.csrf import csrf_exempt

from StdMgtApp.forms import AddStudentForm, EditStudentForm
from StdMgtApp.models import CustomUser, Courses, Subjects, Staffs, Students, SessionYearModel


def admin_home(request):
    return render(request, "hod_template/home_content.html")


def add_staff(request):
    return render(request, "hod_template/add_staff_template.html")


def add_staff_save(request):
    if request.method != 'POST':
        return HttpResponse("Methond Not Allowed")
    else:
        firstname = request.POST.get('firstname')
        lastname = request.POST.get('lastname')
        username = request.POST.get('username')
        password = request.POST.get('password')
        address = request.POST.get('address')
        email = request.POST.get('email')

        try:
            user = CustomUser.objects.create_user(username=username, password=password, email=email,
                                                  last_name=lastname,
                                                  first_name=firstname, user_type=2)
            user.staffs.address = address
            user.save()
            messages.success(request, "Successfully Added Staff")
            return HttpResponseRedirect(reverse("add_staff"))
        except:
            messages.error(request, "Failed to Add Staff")
            return HttpResponseRedirect(reverse("add_staff"))


def add_course(request):
    return render(request, "hod_template/add_course_template.html")


def add_course_save(request):
    if request.method != 'POST':
        return HttpResponse("Methond Not Allowed")
    else:
        course = request.POST.get('coursename')
        try:
            courses_model = Courses(name=course)
            courses_model.save()
            messages.success(request, "Successfully Added Course")
            return HttpResponseRedirect(reverse("add_course"))
        except:
            messages.error(request, "Failed to Add Course")
            return HttpResponseRedirect(reverse("add_course"))


def add_session_save(request):
    if request.method != "POST":
        return HttpResponse(reverse("manage_session"))
    else:
        start_session = request.POST.get('session_start_year')
        end_session = request.POST.get('session_end_year')
        try:
            session = SessionYearModel(session_start_year=start_session, session_end_year=end_session)
            session.save()
            messages.success(request, "Successfully Added Session")
            return HttpResponseRedirect(reverse("manage_session"))
        except:
            messages.error(request, "Failed to Add Session")
            return HttpResponseRedirect(reverse("session_Session"))


def add_student(request):
    form = AddStudentForm()
    return render(request, "hod_template/add_student_template.html", {"form":form})


def add_student_save(request):
    if request.method != 'POST':
        return HttpResponse("Methond Not Allowed")
    else:
        form=AddStudentForm(request.POST, request.FILES)
        if form.is_valid():
            firstname = form.cleaned_data['firstname']
            lastname = form.cleaned_data['lastname']
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            address = form.cleaned_data['address']
            email = form.cleaned_data['email']
            session_year_id = form.cleaned_data['session_year_id']
            course_id = form.cleaned_data['course']
            sex = form.cleaned_data['sex']

            profile_pic = request.FILES['profile_pic']
            fs = FileSystemStorage()
            filename = fs.save(profile_pic.name,profile_pic)
            profile_pic_url = fs.url(filename)

            try:
                user = CustomUser.objects.create_user(username=username, password=password, email=email,
                                                      last_name=lastname,
                                                      first_name=firstname, user_type=3)
                user.students.address = address
                course_obj = Courses.objects.get(id=course_id)
                user.students.course_id = course_obj

                session_year = SessionYearModel.objects.get(id=session_year_id)
                user.students.session_year_id = session_year
                user.students.profile_pic = profile_pic_url
                user.students.sex = sex
                user.save()
                messages.success(request, "Successfully Added Student")
                return HttpResponseRedirect(reverse("add_student"))
            except:
                messages.error(request, "Failed to Add Student")
                return HttpResponseRedirect(reverse("add_student"))
        else:
            form = AddStudentForm(request.POST)
            return render(request, "hod_template/add_student_template.html", {"form":form})


def add_subject(request):
    courses = Courses.objects.all()
    staffs = CustomUser.objects.filter(user_type=2)
    return render(request, "hod_template/add_subject_template.html", {"courses": courses, "staffs": staffs})


def add_subject_save(request):
    if request.method != "POST":
        return HttpResponse("<h3>Method not Allowed</h3>")
    else:
        subject = request.POST.get('subjectname')
        course_id = request.POST.get('course')
        course = Courses.objects.get(id=course_id)
        staff_id = request.POST.get('staff')
        staff = CustomUser.objects.get(id=staff_id)

        try:
            subject = Subjects(name=subject, course_id=course, staff_id=staff)
            subject.save()
            messages.success(request, "Successfully Added Subject")
            return HttpResponseRedirect(reverse("add_subject"))
        except:
            messages.error(request, "Failed to Add Subject")
            return HttpResponseRedirect(reverse("add_subject"))


def manage_staff(request):
    staffs = Staffs.objects.all()
    return render(request, "hod_template/manage_staff.html", {"staffs": staffs})


def manage_student(request):
    students = Students.objects.all()
    return render(request, "hod_template/manage_student_template.html", {"students": students})


def manage_course(request):
    courses = Courses.objects.all()
    return render(request, "hod_template/manage_course_template.html", {"courses": courses})


def manage_subject(request):
    subjects = Subjects.objects.all()
    return render(request, "hod_template/manage_subject_template.html", {"subjects": subjects})

def manage_session(request):
    sessions = SessionYearModel.objects.all()
    return render(request,"hod_template/manage_session_template.html", {"session": sessions})


def edit_staff(request, staff_id):
    staff = Staffs.objects.get(admin=staff_id)
    return render(request, "hod_template/edit_staff_template.html", {"staff": staff, "id": staff_id})


def edit_staff_save(request):
    if request.method != 'POST':
        return HttpResponse("<h2>Method Not Allowed</h2>")
    else:
        staff_id = request.POST.get("staff_id")
        first_name = request.POST.get("firstname")
        last_name = request.POST.get("lastname")
        email = request.POST.get("email")
        username = request.POST.get("username")
        address = request.POST.get("address")

        try:
            user = CustomUser.objects.get(id=staff_id)
            user.first_name = first_name
            user.last_name = last_name
            user.email = email
            user.username = username
            user.save()

            staff_model = Staffs.objects.get(admin=staff_id)
            staff_model.address = address
            staff_model.save()

            messages.success(request, "Successfully Edited Staff")
            return HttpResponseRedirect(reverse("edit_staff", kwargs={"staff_id": staff_id}))
        except:
            messages.error(request, "Failed to edit Staff Details")
            return HttpResponseRedirect(reverse("edit_staff", kwargs={"staff_id": staff_id}))



def edit_student(request, student_id):
    request.session['student_id']=student_id
    student = Students.objects.get(admin=student_id)
    form = EditStudentForm()
    form.fields['email'].initial=student.admin.email
    form.fields['firstname'].initial=student.admin.first_name
    form.fields['lastname'].initial=student.admin.last_name
    form.fields['username'].initial=student.admin.username
    form.fields['address'].initial=student.address
    form.fields['course'].initial=student.course_id.id
    form.fields['sex'].initial=student.gender
    form.fields['session_year_id'].initial=student.session_year_id.id

    return render(request, "hod_template/edit_student_template.html", {"form":form, "id": student_id, "username":student.admin.username})


def edit_student_save(request):
    if request.method != 'POST':
        return HttpResponse("<h2>Method Not Allowed</h2>")
    else:
        std_id = request.session.get('student_id')
        if std_id is None:
            return HttpResponseRedirect(reverse("manage_student"))

        form = EditStudentForm(request.POST, request.FILES)
        if form.is_valid():
            first_name = form.cleaned_data['firstname']
            last_name = form.cleaned_data['lastname']
            email = form.cleaned_data['email']
            username = form.cleaned_data['username']
            address = form.cleaned_data['address']
            course_id = form.cleaned_data['course']
            sex = form.cleaned_data['sex']
            session_year_id = form.cleaned_data['session_year_id']

            if request.FILES.get('profile_pic',False):
                profile_pic = request.FILES['profile_pic']
                fs = FileSystemStorage()
                filename = fs.save(profile_pic.name, profile_pic)
                profile_pic_url = fs.url(filename)
            else:
                profile_pic_url = None

            try:
                user = CustomUser.objects.get(id=std_id)
                user.first_name = first_name
                user.last_name = last_name
                user.email = email
                user.username = username
                user.save()

                std_model = Students.objects.get(admin=std_id)
                std_model.address = address
                std_model.course_id.course = course_id
                std_model.gender = sex

                session_year = SessionYearModel.objects.get(id=session_year_id)
                std_model.session_year_id = session_year

                courses = Courses.objects.get(id=course_id)
                std_model.course_id=courses

                if profile_pic_url!=None:
                    std_model.profile_pic=profile_pic_url
                std_model.save()

                del request.session['student_id']

                messages.success(request, "Successfully Edited Student")
                return HttpResponseRedirect(reverse("edit_student",kwargs={"student_id":std_id}))
            except:
                messages.error(request, "Failed to edit Student Details")
                return HttpResponseRedirect(reverse("edit_student",kwargs={"student_id":std_id}))
        else:
            form = EditStudentForm(request.POST)
            student = Students.objects.get(admin=std_id)
            return render(request, "hod_template/edit_student_template.html", {"form":form, "id": std_id, "username":student.admin.username})

def edit_course(request, course_id):
    course = Courses.objects.get(id=course_id)
    return render(request, "hod_template/edit_course_template.html", {"courses":course, "id": course_id})

def edit_course_save(request):
    if request.method != 'POST':
        return HttpResponse(" Method Not Allowed!")
    else:
        course_name = request.POST.get('coursename')
        course_id = request.POST.get('course_id')
        try:
            courses = Courses.objects.get(id=course_id)
            courses.name = course_name
            courses.save()

            messages.success(request, "Successfully Edited Course")
            return HttpResponseRedirect(reverse("edit_course",kwargs={"course_id":course_id}))
        except:
            messages.error(request, "Couldn't Edit the Course")
            return HttpResponseRedirect(reverse("edit_course",kwargs={"course_id":course_id}))


def edit_subject(request, subject_id):
    subject = Subjects.objects.get(id=subject_id)
    course = Courses.objects.all()
    staff = CustomUser.objects.all()
    return  render(request, "hod_template/edit_subject_template.html", {"subjects":subject, "courses":course, "staffs":staff, "id": subject_id})

def edit_subject_save(request):
    if request.method != 'POST':
        return HttpResponse("Method not Allowed!")
    else:
        subject_id = request.POST.get('subject_id')
        subject_name = request.POST.get('subjectname')
        staff_id = request.POST.get('staff')
        course_id = request.POST.get('course')

        try:
            subjects = Subjects.objects.get(id=subject_id)
            subjects.name = subject_name
            staff = CustomUser.objects.get(id=staff_id)
            subjects.staff_id = staff
            courses = Courses.objects.get(id=course_id)
            subjects.course_id = courses
            subjects.save()

            messages.success(request, "Successfully Edited Subjects")
            return HttpResponseRedirect("edit_subject/"+subject_id)
            return HttpResponseRedirect(reverse("edit_subject", kwargs={"subject_id": subject_id}))
        except:
            messages.error(request, "Failed to Edit the Subject")
            return HttpResponseRedirect(reverse("edit_subject", kwargs={"subject_id": subject_id}))

@csrf_exempt
def check_email_exist(request):
    email = request.POST.get("email")
    user_obj = CustomUser.objects.filter(email=email).exists()

    if user_obj:
        return HttpResponse(True)
    else:
        return HttpResponse(False)


@csrf_exempt
def check_username_exist(request):
    username = request.POST.get("username")
    user_obj = CustomUser.objects.filter(username=username).exists()

    if user_obj:
        return HttpResponse(True)
    else:
        return HttpResponse(False)
