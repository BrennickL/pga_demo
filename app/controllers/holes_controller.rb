class HolesController < ApplicationController

  def index
    render json: course.holes
  end

  def assign
    # TODO make assignment of holes to the existing course
  end

  private

  def course
    @course ||= Course.find(params[:course_id])
  end
end
