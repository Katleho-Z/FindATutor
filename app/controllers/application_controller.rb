class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :user_is_student?, :user_is_tutor? 

  def user_is_student?(user)
    user.student.present?
  end

  def user_is_tutor?(user)
    user.tutor.present?
  end


end
