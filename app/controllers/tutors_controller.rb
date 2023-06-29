class TutorsController < ApplicationController
  before_action :set_tutor, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @tutors = Tutor.search_by_name(params[:query])
    else
      @tutors = Tutor.all
    end
  end

  def show
  end

  def new
    @tutor = Tutor.new
  end

  def create
    @tutor = Tutor.new(tutor_params)
    @tutor.user = current_user
    if @tutor.save
      redirect_to @tutor, notice: 'Tutor was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tutor.update(tutor_params)
      redirect_to @tutor, notice: 'Tutor was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tutor.destroy
    redirect_to tutors_url, notice: 'Tutor was successfully deleted.'
  end

  private

  def set_tutor
    @tutor = Tutor.find(params[:id])
  end

  def tutor_params
    params.require(:tutor).permit(:first_name, :last_name, :photo, :availability, :user_id, :location, :email_address, :bio, :profile_image)
  end
end
