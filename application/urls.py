from django.urls import path
from .views import index, sign_up, user_account, RetrieveLeaderboardView, RetrieveQuestionsView, question_request
#  RetrieveOrdersView, CreateOrderView, UpdateOrderView, DeleteOrderView
from django.contrib.auth.decorators import login_required

app_name = 'application'  # namespace

urlpatterns = [
    path('', index, name='index'),
    path('leaderboard/', login_required(RetrieveLeaderboardView.as_view()), name='leaderboard'),
    # path('play/', login_required(RetrieveQuestionsView.as_view()), name='play'),
    # path('orders/create/', CreateOrderView.as_view(), name='order_create'),
    # path('questions/<int:pk>/', login_required(question_request), name='play'),
    path('play/', login_required(question_request), name='play'),
    # path('orders/<int:pk>/delete/', DeleteOrderView.as_view(), name='order_delete'),
    path('registration/sign_up', sign_up, name='sign_up'),
    path('user_account', login_required(user_account), name='user_account'),
]
