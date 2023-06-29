class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :about
  def about
  end
end
