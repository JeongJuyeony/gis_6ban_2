from django.db import models

# Create your models here.

from django.contrib.auth.models import User
from django.db import models

# Create your models here.

class Article(models.Model):
    writer = models.ForeignKey(User, on_delete=models.SET_NULL,
                               related_name='article', null=True)

    title = models.CharField(max_length=300, null=True)
    image = models.ImageField(upload_to='article/', null=True)
    content = models.TextField(null=True)

    created_at = models.DateTimeField(auto_now_add=True, null=True)