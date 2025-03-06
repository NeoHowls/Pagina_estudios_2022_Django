from django.shortcuts import render
from django.views.generic import TemplateView
from django.views.generic import CreateView
from .models import Profile

# Create your views here.
class StudentsPageView(TemplateView):
    template_name = "students.html"

class StudentProfilePageView(TemplateView):
    model = Profile
    template_name = "studentProfile.html"

class StudentsSettingsPageView(CreateView):
    model = Profile
    template_name= "studentSettings.html"
    fields = ["user","bio", "pfp", "correo",]

    def settings(request):
        user_profile = Profile.objects.get(user = request.user)