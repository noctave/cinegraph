class WelcomeController < ApplicationController
  def accueil
  	if params[:q]
      @tests = Imdb::Search.new(params[:q]).movies
    else
	  @tests = nil
    end

	if params[:v]
		if user_signed_in?
      		id = params[:v]
	  		imdbMovie = Imdb::Movie.new(id)
	      	arg = {:movie_id => imdbMovie.id, :title => imdbMovie.title, :url => imdbMovie.url, :user_id => current_user.id}
	      	Movie::create(arg)
	  		redirect_to (root_path)
    	else
  			redirect_to (root_path)
  		end
  	end
  end

end
