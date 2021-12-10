from django.db import models
from django.contrib.auth.models import User


class userProfile(models.Model):
    gen = (
        ("male","Male"),
        ("female","Female"),
        ("others","Others")
    )
    user_type = (
        ('DONAR','DONAR'),
        ('RECEPTOR','RECEPTOR')
    )

    user = models.OneToOneField(User,on_delete=models.CASCADE)
    user_type = models.CharField(max_length=10,choices=user_type,null=True)
    first_name = models.CharField(max_length=500)
    last_name = models.CharField(max_length=500, blank=True)
    email = models.CharField(max_length=500)
    phone_number = models.CharField(max_length=200, null=True)
    dob = models.DateField(null=True)
    gender = models.CharField(max_length=250,choices=gen,blank=True)
    profile_pic = models.ImageField(upload_to="profile/%Y/%m/%d",blank=True)
    address = models.TextField(null=True)
    otp = models.CharField(max_length=250, blank=True)
    social_token = models.CharField(max_length=500,blank=True, null=True)

    def __str__(self):
        return f"{self.user.phone_number}=> {self.user.id}"