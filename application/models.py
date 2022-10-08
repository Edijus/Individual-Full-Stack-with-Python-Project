from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.

class User(AbstractUser):
    image = models.ImageField(null=True, blank=True)


class Service(models.Model):
    name = models.CharField(max_length=100, unique=True)
    price = models.FloatField()
    date_created = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.name


class Leaderboard(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    score = models.IntegerField(null=False)
    date_created = models.DateField(auto_now_add=True, null=False)

    def __str__(self):
        return f'{self.score} ({self.user})'

    def __repr__(self):
        return repr('Hello ' + self.score)


"""
class OrderDetail(models.Model):
    service = models.ForeignKey(Service, on_delete=models.CASCADE)
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    date_created = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.service
"""
