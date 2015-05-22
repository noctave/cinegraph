class WelcomeController < ApplicationController
  def accueil
  	@movies = Movie.all
  	@tests = Imdb::Search.new("Iron man").movies
  end
end
