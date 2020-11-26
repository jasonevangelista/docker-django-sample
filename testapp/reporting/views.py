from django.shortcuts import render
from django.http import JsonResponse, HttpResponse

# Import Django REST Framework packages
from rest_framework.views import APIView

from reporting.models import TestResult
from reporting.serializers import TestResultSerializer

# Create your views here.

def index(request):
  return HttpResponse("Hello world!!!")

class TestView(APIView):
  def get(self, request):

    # query the TestResult model
    test_results = TestResult.objects.all()

    # serialize the query into JSON response
    serializer = TestResultSerializer(test_results, many=True)
    response = serializer.data
    return JsonResponse(response, safe=False, status=200)