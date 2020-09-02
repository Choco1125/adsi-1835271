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

  def get_object(self):
    object = super(MovieDetail, self).get_object()
    object.views_count += 1
    object.save()
    return object

class MovieCategory(ListView):
  model = Movie
  paginate_by = 4
  template_name = 'movie/movie_category.html'

  def get_queryset(self):
    self.category = self.kwargs['category']
    movies = Movie.objects.filter(category = self.category)
    return movies

  def get_context_data(self, **kwargs):
    context = super(MovieCategory, self).get_context_data(**kwargs)
    context['movie_category'] = self.category
    return context
