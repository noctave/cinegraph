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

  		#Movie::create(imdbMovie.id,imdbMovie.title,imdbMovie.url,current_user.id)
      #params = params.require(:movie).permit(:movie_id, :title, :url, :user_id)
      #arg.id = imdbMovie.id
      #arg.title = imdbMovie.title
      #arg.url = imdbMovie.url
      #arg.id = current_user.id
      #Movie::create(arg)

      arg = {:movie_id => imdbMovie.id, :title => imdbMovie.title, :url => imdbMovie.url, :user_id => current_user.id}
      #, "controller"=>"welcome", "action"=>"accueil"

      puts arg.inspect
      Movie::create(arg)



  		redirect_to (root_path)
  	end
  end

end
