
from django.shortcuts import render

from django.views.generic import ListView, DetailView, TemplateView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from .models import Ejercicio

# Create your views here.

class EjerciciosListView(ListView):
    model = Ejercicio
    template_name = "ejerciciosVista.html"


class EjerciciosDetaiilView(DetailView):
    model = Ejercicio
    template_name = "ejercicio_detail.html"

class EjercicioInfinitoPageView(TemplateView):
    template_name = "menu.html"

class SumaPageView(TemplateView):
    template_name = "ejercicios/suma.html"

class RestaPageView(TemplateView):
    template_name = "ejercicios/resta.html"

class MultiplicacionPageView(TemplateView):
    template_name = "ejercicios/multiplicacion.html"

class DivisionPageView(TemplateView):
    template_name = "ejercicios/division.html"

class EjerciciosCreateView(CreateView):
    model = Ejercicio
    template_name = "ejercicio_crear.html"
    fields = ["nombre_ejercicio", "creador", "PrimerNumero","SegundoNumero"]

class EjerciciosUpdateView(UpdateView):
    model = Ejercicio
    template_name = "ejercicio_editar.html"
    fields = ["nombre_ejercicio", "PrimerNumero","SegundoNumero"]
    

class EjerciciosDeleteView(DeleteView):
    model = Ejercicio
    template_name = "ejercicio_eliminar.html"
    success_url = reverse_lazy("ejercicios")