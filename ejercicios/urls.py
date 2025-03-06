from django.urls import path 
from .views import *


urlpatterns = [
    path("", EjerciciosListView.as_view(), name="ejercicios"),
    path("ejercicios/practica", EjercicioInfinitoPageView.as_view(), name="practica"),
    path("ejercicios/practica/suma", SumaPageView.as_view(), name="suma"),
    path("ejercicios/practica/resta", RestaPageView.as_view(), name="resta"),
    path("ejercicios/practica/multiplicacion", MultiplicacionPageView.as_view(), name="multiplicacion"),
    path("ejercicios/practica/division", DivisionPageView.as_view(), name="division"),
    path("ejercicios/post/<int:pk>", EjerciciosDetaiilView.as_view(), name="ejercicio_detail"),
    path("ejercicios/post/new/", EjerciciosCreateView.as_view(), name="new_ejercicio"),
    path("ejercicios/post/<int:pk>/edit", EjerciciosUpdateView.as_view(), name="edit_ejercicio"),
    path("ejercicios/post/<int:pk>/delete", EjerciciosDeleteView.as_view(), name="delete_ejercicio")

    
]
