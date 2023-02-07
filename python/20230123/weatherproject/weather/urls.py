from django.urls import path, include
from .views import TopView, WeatherApiView

urlpatterns = [
    path('top/', TopView.as_view()),
    path('api/<int:pk>/', WeatherApiView.as_view()),
]
