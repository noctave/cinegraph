class WelcomeController < ApplicationController
  def accueil
  	@movies = Movie.all
  	#@tests = Imdb::Search.new("Iron man").movies
  	if params[:q]
      @tests = Imdb::Search.new(params[:q]).movies
    else
	  @tests = nil
    end
  end
end
