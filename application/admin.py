from django.contrib import admin
from django.contrib.auth.models import Permission, ContentType
from .models import User, Questions, Answers, Leaderboard

# Register your models here.
admin.site.register(User)
admin.site.register(Permission)
admin.site.register(ContentType)
admin.site.register(Questions)
admin.site.register(Answers)
admin.site.register(Leaderboard)
