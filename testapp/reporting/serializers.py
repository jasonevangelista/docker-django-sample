from rest_framework import serializers
from reporting.models import TestResult

class TestResultSerializer(serializers.ModelSerializer):
    class Meta:
        model = TestResult
        fields = ['test_id', 'test_name']