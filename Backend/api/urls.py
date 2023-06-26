from django.urls import path
from . import views

urlpatterns = [
    path('',views.helloworld),
    path('all_user/',views.all_user),
    path('user/',views.user_account)
]