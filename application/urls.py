from django.urls import path
from .views import index, sign_up, user_account, RetrieveLeaderboardView
#  RetrieveOrdersView, CreateOrderView, UpdateOrderView, DeleteOrderView

app_name = 'application'  # namespace

urlpatterns = [
    path('', index, name='index'),
    path('leaderboard/', RetrieveLeaderboardView.as_view(), name='leaderboard'),
    # path('leaderboard/', RetrieveLeaderboardView.as_view(), name='leaderboard'),
    # path('orders/create/', CreateOrderView.as_view(), name='order_create'),
    # path('orders/<int:pk>/update/', UpdateOrderView.as_view(), name='order_update'),
    # path('orders/<int:pk>/delete/', DeleteOrderView.as_view(), name='order_delete'),
    path('registration/sign_up', sign_up, name='sign_up'),
    path('user_account', user_account, name='user_account'),
]
