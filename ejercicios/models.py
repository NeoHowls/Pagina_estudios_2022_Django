from email.policy import default
from pyexpat import model
from unittest.util import _MAX_LENGTH
from django.db import models
from django.urls import reverse

# Create your models here.

class Ejercicio(models.Model):
    nombre_ejercicio = models.CharField(max_length = 20)
    creador = models.ForeignKey("auth.User",
    on_delete=models.CASCADE,
    )
    PrimerNumero = models.IntegerField(default = 0)
    SegundoNumero = models.IntegerField(default = 2)

    def __str__(self):
        return self.nombre_ejercicio

    def get_absolute_url(self):
        return reverse("ejercicio_detail", kwargs={"pk": self.pk})

