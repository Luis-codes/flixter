class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:show]

  def enrolled_in?(course)
    return enrolled_courses.include?(course)
    else
      redirect_to course_path, alert: 'Unauthorized'
  end

  def show
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
