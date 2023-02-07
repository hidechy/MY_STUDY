from django.shortcuts import render
from django.views.generic import ListView

from weather.models import Weather

from rest_framework.generics import RetrieveAPIView
from rest_framework.permissions import IsAuthenticated
from .serializers import WeatherSerializer

class TopView(ListView):
    model = Weather
    template_name = 'top.html'

class WeatherApiView(RetrieveAPIView):
    queryset = Weather.objects.all()
    serializer_class = WeatherSerializer
    permission_classes = [IsAuthenticated]
