from django.urls import path
from . import views

urlpatterns = [
    path('',views.helloworld),
    path('all_user/',views.all_user),
    path('user_account/',views.user_account)
]