from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
# Create your views here.

@api_view(['GET'])
def helloworld(request):
    message = {'msg':'hello django restful api','code':'200'}
    return Response(message)