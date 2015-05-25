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
      	arg = {:movie_id => imdbMovie.id, :title => imdbMovie.title, :url => imdbMovie.url, :user_id => current_user.id}
      	Movie::create(arg)
  		redirect_to (root_path)
  	end
  end

end
