class TutorProfilesController < ApplicationController
  def index
    @tutor_profiles = TutorProfile.all
  end

  def show
    @tutor_profile = TutorProfile.find(params[:id])
  end

  def new
    @tutor_profile = TutorProfile.new
  end

  
end
