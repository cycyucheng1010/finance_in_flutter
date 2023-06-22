from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import User
from .serializers import UserSerializer
import datetime
# Create your views here.

@api_view(['GET'])
def helloworld(request):
    message = {'msg':'hello django restful api','code':'200','now':datetime.datetime.now()}
    return Response(message)

@api_view(['POST'])
def add_user(request):
    data = request.data
    user_data = User.objects.create(account = data['account'],password = data['password'])
    serializer = UserSerializer(user_data,many=False)
    return Response(serializer.data)
    
@api_view(['GET'])
def get_all_user(request):
    user_data = User.objects.all()
    serializer = UserSerializer(user_data,many=True)
    return Response(serializer.data)
    