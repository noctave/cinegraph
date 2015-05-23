class WelcomeController < ApplicationController
  def accueil
  	@movies = Movie.all
  	#@tests = Imdb::Search.new("Iron man").movies
  	if params[:q]
      @tests = Imdb::Search.new(params[:q]).movies
    else
	  @tests = nil
    end

	if params[:v]
  		id = params[:v]
  		@testidpass = id
  		#imdbMovie = Imdb::Movie.new(id)
  		#Movie::Create(imdbMovie.id, )
  		#redirect_to (accueil)
  	end
  end

end
