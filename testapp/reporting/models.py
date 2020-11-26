from django.db import models

# Create your models here.
class TestResult(models.Model):
  test_id = models.CharField(max_length=256, primary_key=True)
  test_name = models.CharField(max_length=256, blank=True, null=True)

  class Meta:
    db_table = 'test_table'
    app_label = 'reporting'