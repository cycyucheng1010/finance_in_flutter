from django.urls import path
from . import views

urlpatterns = [
    path('',views.helloworld),
    path('show_all_user/',views.get_all_user),
    path('add_user/',views.add_user)
]