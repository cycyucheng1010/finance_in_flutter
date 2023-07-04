from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
#from .models import User
from .serializers import UserSerializer
from django.contrib.auth.models import User
from django.contrib import auth
import datetime
# Create your views here.

@api_view(['GET'])
def helloworld(request):
    print('userIP:',request.META['REMOTE_ADDR'])
    message = {'msg':'hello django restful api','code':'200','now':datetime.datetime.now()}
    return Response(message)

@api_view(['POST','GET','PUT','DELETE'])
def user_account(request):
    print(request.META['REMOTE_ADDR'])
    # request data must contain account and password 
    if request.method == 'POST':
        data = request.data
        try:
            check_data = User.objects.get(username = data['account'])
            message = {'msg':'account already exist:','time':datetime.datetime.now()}
            return Response(message)
        except:
            user_data = User.objects.create_user(data['account'],data['email'],data['password'])
            serializer = UserSerializer(user_data,many=False)
            message = {'msg':'create success','detail':serializer.data}
            return Response(message)

    elif request.method == 'GET':
        data = request.data
        try:
            user_data = User.objects.get(username = data['account'])
            serializer = UserSerializer(user_data,many=False)
            message = {'msg':'query success user: '+str(serializer.data['username'])+" is exist" ,'time':datetime.datetime.now()}
            return Response(message)
        except:
            message = {'msg':'query error or account not exist' ,'time':datetime.datetime.now()}
            return Response(message)
    elif request.method == 'PUT':
        data = request.data
        try:
            user_data = User.objects.get(username = data['account'])
            user_data.set_password(data['password'])
            user_data.save()
            serializer = UserSerializer(user_data,many=False)
            message = {'msg':'modify success!','time':datetime.datetime.now()}
            return Response(message)
        except:
            message = {'msg':'query error:'+str(data) ,'time':datetime.datetime.now()}
            return Response(message)
    elif request.method =='DELETE':
        data = request.data
        try:
            if request.user.is_superuser:
                user_data = User.objects.get(username = data['account'])
                user_data.delete()
                message = {'msg':'delete account success','time':datetime.datetime.now()}
                return Response(message)
            else:
                message = {'msg':'permission denied ','time':datetime.datetime.now()}
                return Response(message)
        except:
            message = {'msg':'query error:'+str(data) ,'time':datetime.datetime.now()}
            return Response(message)
    else:
        message = {'msg':'request method error','time':datetime.datetime.now()}
        return Response(message)

        
@api_view(['GET'])
def all_user(request):
    print(request.META['REMOTE_ADDR'],'\n',request.user)
    if request.user.is_superuser:
        check_data = User.objects.get(username = request.user)
        user_data = User.objects.all()
        serializer = UserSerializer(user_data,many=True)
        return Response(serializer.data)
    else:
        message = {"msg":"I can't tell you. You are "+str(request.user),'time':datetime.datetime.now()}
        return Response(message)
'''
@api_view(['POST'])
def login(request):
    if request.user.is_authenticated():
        return 
'''