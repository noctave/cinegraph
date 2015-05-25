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
  		imdbMovie = Imdb::Movie.new(id)
  		puts imdbMovie.title
  		puts imdbMovie.id
  		puts imdbMovie.url
  		puts current_user.id
  		Movie.Create(imdbMovie.id,imdbMovie.title,imdbMovie.url,current_user.id)
  		redirect_to (root_path)
  	end
  end

end
