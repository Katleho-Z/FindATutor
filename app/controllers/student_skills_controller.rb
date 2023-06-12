class StudentSkillsController < ApplicationController
  before_action :set_student_skill, only: [:show, :edit, :update, :destroy]

  def index
    @student_skills = StudentSkill.all
  end

  def show
  end

  def new
    @student_skill = StudentSkill.new
  end

  def create
    @student_skill = StudentSkill.new(student_skill_params)
    if @student_skill.save
      redirect_to @student_skill, notice: 'Student skill was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @student_skill.update(student_skill_params)
      redirect_to @student_skill, notice: 'Student skill was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @student_skill.destroy
    redirect_to student_skills_url, notice: 'Student skill was successfully destroyed.'
  end

  private

  def set_student_skill
    @student_skill = StudentSkill.find(params[:id])
  end

  def student_skill_params
    params.require(:student_skill).permit(:student_id, :skill_id, :level)
  end
end

