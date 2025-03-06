from django.shortcuts import render
from django.views.generic import TemplateView

# Create your views here.
class TeacherLogInPageView(TemplateView):
    template_name = "teacher/login.html"

class PrincipalPageView(TemplateView):
    template_name = "teacher/principal.html"