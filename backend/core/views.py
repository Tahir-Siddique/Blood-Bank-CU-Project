from django.db.models.query import QuerySet
from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from django.contrib.auth.models import User
from rest_framework import status
from .serializers import *
# Create your views here.



@api_view(['POST',])
def registration_view(request):
    if request.method=="POST":
        dt={}
        data = {}
        phone_number = request.POST.get("phone_number",None) 
        if phone_number  is None:
            return Response({"status":"error","message":"phone_number is required"},status=status.HTTP_400_BAD_REQUEST)
        else:
            check = userProfile.objects.filter(phone_number=phone_number)
            if len(check) >0:
                return Response({"status":"error","message":"A user with this phone number already exists"},status=status.HTTP_400_BAD_REQUEST)

        serializer = RegistrationSerializer(data=request.data)
            
        if serializer.is_valid():
            account = serializer.save()
            data["status"]="success"
            
            data["message"] = "Successfully registered new User"
            dt["email"]  = account.email
            dt["user_id"]  = account.user.id
            data["data"] = dt
            return Response(data, status=status.HTTP_201_CREATED)

        else:
            
            dt["data"]=serializer.errors
            dt["status"]="error"
        
        return Response(dt)

