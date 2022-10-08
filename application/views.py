from django.shortcuts import render, redirect
from django.contrib.auth import login
from .forms import SignUpForm, EditUserAccountForm
from django.views.generic.list import ListView
from django.views.generic import View
from .models import Leaderboard
from django.urls import reverse_lazy
from django.views.generic import CreateView, UpdateView, DeleteView


# Create your views here.
""""
class RetrieveLeaderboardView(ListView):
    model = Leaderboard
"""

class LeaderboardBaseView(View):
    model = Leaderboard
    fields = '__all__'
    success_url = reverse_lazy('application:leaderboard')


class RetrieveLeaderboardView(LeaderboardBaseView, ListView):
    def get_queryset(self):
        leaders = Leaderboard.objects.order_by("-score")[:10]
        return leaders


""""
class RetrieveLeaderboardView(LeaderboardBaseView, ListView):
    pass
"""

""""
class RetrieveLeaderboardView(LeaderboardBaseView, ListView):
    template_name = "application/leaderboard_list.html"

    def get_queryset(self):
        # Use get_queryset instead of queryset because you want timezone.now()
        # to be called when the view runs, not when the server starts
        # leaders = Leaderboard.objects.order_by("-score")[:25]
        leaders = Leaderboard.objects.order_by("-score")
        return leaders
"""


""""
def RetrieveLeaderboardView(request):
    leaderboard = Leaderboard.objects.all()
    return render(request, 'leaderboard_list.html', locals())
"""


"""
class OrderBaseView(View):
    model = Order
    fields = '__all__'
    success_url = reverse_lazy('application:leaderboard')


class RetrieveOrdersView(OrderBaseView, ListView):
    pass


class CreateOrderView(OrderBaseView, CreateView):
    pass


class UpdateOrderView(OrderBaseView, UpdateView):
    pass


class DeleteOrderView(OrderBaseView, DeleteView):
    pass
"""


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
