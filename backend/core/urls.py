from django.urls import path
from .views import *

app_name = 'core'

urlpatterns = [
    path('register/',registration_view, name="register"),
]