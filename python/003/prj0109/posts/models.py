from django.db import models

# Create your models here.
class Post(models.Model):
    title = models.CharField(max_length=100)
    created_at = models.DateTimeField()
    image = models.ImageField(upload_to='media')
    body = models.TextField()

    def __str__(self):
        return self.title

    def summary(self):
        txt = self.body[:50]
        if len(self.body) >= 50:
            txt += '...'
        return txt
