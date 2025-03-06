from django.urls import path
from .views import *

urlpatterns = [
    path("", StudentsPageView.as_view(), name="students"),
    path("profile/", StudentProfilePageView.as_view(), name="profile"),
    path("profile/settings/", StudentsSettingsPageView.as_view(), name="settings")
]