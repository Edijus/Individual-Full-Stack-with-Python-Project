from django.shortcuts import render, redirect
from django.contrib.auth import login
from .forms import SignUpForm, EditUserAccountForm, EditLeaderboardForm
from django.views.generic.list import ListView
from django.views.generic import View
from .models import Leaderboard, Questions, Answers
from django.urls import reverse_lazy
from .models import User
import random


# Create your views here.
class LeaderboardBaseView(View):
    model = Leaderboard
    fields = '__all__'
    success_url = reverse_lazy('application:leaderboard')


class RetrieveLeaderboardView(LeaderboardBaseView, ListView, User):
    def get_queryset(self):
        leaders = Leaderboard.objects.order_by("-score", "date_created")[:10]
        return leaders


class RetrieveQuestionsView(ListView, User):
    def get_queryset(self):
        questions = Questions.objects
        return questions


def index(request):
    return render(request, 'index.html')


def sign_up(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            return redirect('application:index')
    else:
        form = SignUpForm()
    return render(request, 'registration/sign_up.html', context={'form': form})


def user_account(request):
    if request.method == 'POST':
        form = EditUserAccountForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('application:user_account')
    else:
        form = EditUserAccountForm(
            initial={
                'email': request.user.email,
                'image': request.user.image
            }
        )
    return render(request, 'user_account.html', context={'form': form})


def question_request(request):
    next_score = int(Questions.objects.values_list('sum').order_by('sum').first()[0])
    if request.method == 'POST':
        request.POST._mutable = True
        request.POST['user'] = request.user.id
        form = EditLeaderboardForm(request.POST)
        if form.is_valid():
            correct_answer = int(Answers.objects.filter(question=request.POST['question_id']).filter(is_correct=True)
                .values_list('id').order_by('?').first()[0])
            if correct_answer == int(request.POST['answer']):
                form.save()
            else:
                form = {
                    'score': request.POST['score']
                }

                return render(request, 'application/game_over.html', context={'form': form})

            the_question = Questions.objects.filter(sum__gt=request.POST['score']).values_list('sum')\
                .order_by('sum').first()
            if the_question is not None:
                next_score = int(the_question[0])
            question_id = int(Questions.objects.filter(sum=next_score).values_list('id').order_by('?').first()[0])
    else:
        # Get random question
        question_id = int(Questions.objects.filter(sum=next_score).values_list('id').order_by('?').first()[0])

    # get the actual question
    the_question = Questions.objects.filter(id=question_id)
    # Choose 4 random answers, first one is correct
    answers = Answers.objects.filter(question_id=question_id).order_by('-is_correct', '?')[:4]

    # randomize answer list
    answer_list = list(answers)
    random.shuffle(answer_list)
    answers = tuple(answer_list)

    form = {
        'the_question': the_question,
        'answers': answers,
        'score': next_score
    }

    return render(request, 'application/play.html', context={'form': form})
