from django.db import models


# Create your models here.
class Profile(models.Model):
    user = models.ForeignKey("auth.User", on_delete=models.CASCADE)
    bio = models.TextField(blank=True)
    pfp = models.ImageField(upload_to = 'profile_images', default = 'blankProfilePicture.png')
    correo = models.CharField(max_length=100, blank=True)

    def __str__(self):
        return self.user.username