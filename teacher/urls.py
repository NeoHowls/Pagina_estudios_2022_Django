from django.urls import path
from .views import *

urlpatterns = [
    path("", TeacherLogInPageView.as_view(), name="teacherlogin"),
    path("principal/", PrincipalPageView.as_view(), name="principal"),
]