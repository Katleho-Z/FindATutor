class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
    @tutor = Tutor.find_by(first_name: "Mzi", last_name: "Mthethwa")
  end

  def show
    
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.user = current_user
    if @student.save
      redirect_to tutors_path, notice: 'Student was successfully created.'
    else
      render :new, status: :uprocessable_entity
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_url, notice: 'Student was successfully deleted.'
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :photo, :user_id, :phone_number, :bio)
  end
end
