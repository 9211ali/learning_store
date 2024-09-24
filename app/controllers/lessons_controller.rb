class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[ show update ]
  before_action :set_course, only: %i[ show update ]

  def show
    @completed_lessons = current_user.lessons.joins(:lesson_users).where(lesson_users: { completed: true })
  end

  def update
    @lesson_user = LessonUser.find_or_create_by(user_id: current_user.id, lesson_id: @lesson.id)
    @lesson_user.update!(completed: true)
    next_lesson = @course.lessons.where('position > ?', @lesson.position).order(:position).first
    if next_lesson
      redirect_to course_lesson_path(@course, next_lesson)
    else
      redirect_to course_path(@course), notice: "You've completed the course!"
    end
  end

  private
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def set_course
      @course = Course.find(params[:course_id])
    end
end
