from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import User, Leaderboard


class SignUpForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']


class EditUserAccountForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['email', 'image']


class EditLeaderboardForm(forms.ModelForm):
    class Meta:
        model = Leaderboard
        fields = ['score']


class EditLeaderboardForm(forms.ModelForm):
    class Meta:
        model = Leaderboard
        fields = ['score', 'user']
