class CoursesController < ApplicationController
  before_action :load_course, except: [:index, :create]

  def index
    render json: Course.all.as_json(
      include: [:holes]
    )
  end

  def show
    render json: @course
  end

  def create
    course = Course.new(course_params)
    if course.save!
      render json: course
    else
      render_model_errors_from(course)
    end
  end

  def update
    if @course.update!(course_params)
      render json: @course
    else
      render_model_errors_from(@course)
    end
  end

  def destroy
    if @course.update!(active: false)
      render json: @course
    else
      render_model_errors_from(@course)
    end
  end

  private

  def course_params
    @course_params ||= params.require(:course).permit(
      :title,
      :description
    )
  end

  def load_course
    @course = Course.find(params[:id])
  end
end
