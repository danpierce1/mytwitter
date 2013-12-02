class CoursesController < ApplicationController

	def index
    	@course = Course.all
  	end
  	def new
  		@course = Course.new
  	end
  	def create
    @course = Course.new(params[:film])
    if @course.save
        redirect_to action: 'index'
        flash[:success] = "Course Entry Complete!"    # NEW LINE
    else
        render action: "new" 
    end
  end

  def show
  	@course = Course.find(params[:id])
 end
  
end