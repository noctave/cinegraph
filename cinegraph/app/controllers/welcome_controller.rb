class WelcomeController < ApplicationController
  def accueil
  	@movies = Movie.all
  end
end
