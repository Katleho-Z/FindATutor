class TutorSkillsController < ApplicationController
  before_action :set_tutor_skill, only: [:show, :edit, :update, :destroy]

  def index
    @tutor_skills = TutorSkill.all
  end

  def show
  end

  def new
    @tutor_skill = TutorSkill.new
  end

  def create
    @tutor_skill = TutorSkill.new(tutor_skill_params)
    if @tutor_skill.save
      redirect_to @tutor_skill, notice: 'Tutor skill was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tutor_skill.update(tutor_skill_params)
      redirect_to @tutor_skill, notice: 'Tutor skill was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tutor_skill.destroy
    redirect_to tutor_skills_url, notice: 'Tutor skill was successfully destroyed.'
  end

  private

  def set_tutor_skill
    @tutor_skill = TutorSkill.find(params[:id])
  end

  def tutor_skill_params
    params.require(:tutor_skill).permit(:tutor_id, :skill_id, :level)
  end
end

