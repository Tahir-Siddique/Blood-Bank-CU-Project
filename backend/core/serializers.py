from django.contrib.auth.models import User
from rest_framework import permissions
from rest_framework import serializers
from .models import *
from django.contrib.auth import get_user_model
from django.shortcuts import get_object_or_404


class UserSerializer(serializers.ModelSerializer):
    
    permission_classes = [permissions.AllowAny]

    class Meta:
        model = User
        fields = ['id', 'username', 'snippets']



class RegistrationSerializer(serializers.ModelSerializer):
    
    permission_classes = [permissions.AllowAny]

    password = serializers.CharField(source='user.password')
    confirm_password = serializers.CharField(style={'input_type':'password', }, write_only=True)
   
    class Meta:
        model = userProfile
        fields= ('first_name','last_name','phone_number','email','password','confirm_password')

    def save(self):
        check = User.objects.filter(phone_number=self.validated_data['phone_number'],)
        if len(check)!= 0:
               raise serializers.ValidationError({'email':'A user with this phone_number already exits!'})         
        account =  get_user_model().objects.create(email = self.validated_data['phone_number'],username=self.validated_data['phone_number'])
        password = self.validated_data['user']['password']
        confirm_password = self.validated_data['confirm_password']

        if password != confirm_password:
            raise serializers.ValidationError({'password':'Password & confirm password does not match!'})
        
        account.first_name = self.validated_data['first_name']
        account.last_name = self.validated_data['last_name']
        account.email = self.validated_data['email']
        account.set_password(password)
        account.save()

        profile = userProfile.objects.create(user=account,first_name=self.validated_data['first_name'],
            last_name = self.validated_data['last_name'],
            email = self.validated_data['email'],
            phone_number = self.validated_data["phone_number"],
            user_type = self.validated_data['user_type']
            )
    
        profile.save()

        return profile
        
class SocialRegistrationSerializer(serializers.ModelSerializer):
    class Meta:
        model = userProfile 
        fields = ('login_type','social_token','first_name','last_name','email')

    def post(self):
        login_type =self.validated_data.get("login_type")
        social_token =self.validated_data.get("social_token")
        email =self.validated_data.get("email")
        first_name =self.validated_data.get("first_name")
        last_name =self.validated_data.get("last_name")
       
        try:
            profile = get_object_or_404(userProfile, login_type=self.validated_data["login_type"], email=self.validated_data["email"])
            profile.social_token = social_token 
            profile.first_name = first_name 
            profile.last_name = last_name 
            profile.save()

            profile.user.first_name = first_name 
            profile.user.last_name = last_name 
            profile.user.save()

            account = get_object_or_404(User, pk=profile.user.id)
            return profile
        except:
            account =  get_user_model().objects.create(email = self.validated_data['email'],username=email+"|"+login_type)
            account.set_password = ""
            account.first_name=first_name 
            account.last_name=last_name
            account.save()

            data=userProfile.objects.create(user=account,login_type=login_type, social_token=social_token, email=email)
            data.first_name = first_name
            data.last_name = last_name
            data.save()

            return data