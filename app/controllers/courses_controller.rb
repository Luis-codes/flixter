class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def image
    image.new
  end

  private

  def image_params
    params.require(:courses).permit(:caption, :image, :image_id)
  end
end
