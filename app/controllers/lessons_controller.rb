class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.all
    @tutor = Tutor.find_by(id: params[:tutor_id])
    @pending_lessons = Lesson.where(status: 'Pending')
    @confirmed_lessons = Lesson.where(status: 'Confirmed')
    @rejected_lessons = Lesson.where(status: 'Rejected')
  end

  def accept
    @lesson = Lesson.find(params[:id])
    @lesson.update(status: 'Accepted')
    redirect_to lessons_path
  end

  def reject
    @lesson = Lesson.find(params[:id])
    @lesson.update(status: 'Rejected')
    redirect_to lessons_path
  end


  def show
  end

  def new
    @lesson = Lesson.new
    @tutor = Tutor.find(params[:tutor_id])
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.status = 'Pending'  # Manually set the status here
    @tutor = Tutor.find(params[:tutor_id])
    @lesson.tutor = @tutor
    @lesson.student = current_user.student
    if @lesson.save!
      redirect_to lesson_path(@lesson), notice: 'Lesson was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to @lesson, notice: 'Lesson was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_url, notice: 'Lesson was successfully deleted.'
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:location, :notes, :tutor_id, :student_id, :date, :time, :amount_offered, :status, :skill_id)
  end
end
