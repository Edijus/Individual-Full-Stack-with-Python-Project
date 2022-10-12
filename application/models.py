from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.

class User(AbstractUser):
    image = models.ImageField(null=True, blank=True)


class Questions(models.Model):
    inquiry = models.TextField(unique=True, null=False, blank=False)
    sum = models.IntegerField(null=False)
    date_created = models.DateField(auto_now_add=True)

    def __str__(self):
        return f'({self.id} {self.inquiry})'


class Leaderboard(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    score = models.IntegerField(null=False)
    date_created = models.DateField(auto_now_add=True, null=False)
    # fifty_fifty_used = models.BooleanField(null=True)
    # call_used = models.BooleanField(null=True)
    # hall_help_used = models.BooleanField(null=True)

    def __str__(self):
        return f'({self.user})'


class Answers(models.Model):
    question = models.ForeignKey(Questions, on_delete=models.CASCADE)
    answer = models.TextField(null=False)
    is_correct = models.BooleanField(null=False)
    date_created = models.DateField(auto_now_add=True)

    def __str__(self):
        return f'({self.id} {self.answer})'

    class Meta:
        constraints = [
            # Fun to have -> only one correct answer per question
            # models.UniqueConstraint(fields=['is_correct', 'question'], condition=Q(is_correct=True),
            #                        name='unq_correct_question_answer'),
            models.UniqueConstraint(fields=['question', 'answer'], name='unq_question_answer')
        ]
