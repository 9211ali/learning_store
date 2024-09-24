class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[ show ]
  before_action :set_course, only: %i[ show ]

  private
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def set_course
      @course = Course.find(params[:course_id])
    end
end
