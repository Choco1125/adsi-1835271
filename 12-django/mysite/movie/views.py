from django.shortcuts import render
from django.views.generic import ListView, DetailView
from .models import Movie

# Create your views here.
class HomeView(ListView):
  model = Movie
  template_name = 'movie/home.html'

  def get_context_data(self, **kwargs):
    context = super(HomeView, self).get_context_data(**kwargs)
    context['top_rated'] = Movie.objects.filter(status = 'TR')
    context['most_watched'] = Movie.objects.filter(status = 'MW')
    context['recently_added'] = Movie.objects.filter(status = 'RA')
    return context

class MovieList(ListView):
  model = Movie
  paginate_by = 4

class MovieDetail(DetailView):
  model = Movie