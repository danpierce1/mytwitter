class FilmsController < ApplicationController
	def index
    	@films = Film.all
  	end
  	def new
  		@film = Film.new
  	end
  	def create
    @film = Film.new(params[:film])
    if @film.save
        redirect_to action: 'index'
        flash[:success] = "Film Entry Complete!"    # NEW LINE
    else
        render action: "new" 
    end
  end

  def show
  	@film = Film.find(params[:id])
 end

  
end