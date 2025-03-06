from email import message
from django.contrib.auth.forms import UserCreationForm
from django.urls import reverse_lazy
from django.views.generic import CreateView
from .models import *
from django.shortcuts import render
from django.contrib import messages

# Create your views here.
class SignUpView(CreateView):
    form_class = UserCreationForm
    success_url = reverse_lazy("login")
    template_name = "registration/signup.html"

def registro(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            message.success(request, f'El heroe {username} se ha alistado a la aventura')
        else:
            form = UserCreationForm()
        context = {'form' : form}
        return render(request, 'registration/signup.html')
