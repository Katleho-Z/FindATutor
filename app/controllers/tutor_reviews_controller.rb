class TutorReviewsController < ApplicationController
  before_action :set_tutor_review, only: [:show, :edit, :update, :destroy]

  def index
    @tutor_reviews = TutorReview.all
  end

  def show
  end

  def new
    @tutor_review = TutorReview.new
  end

  def create
    @tutor_review = TutorReview.new(tutor_review_params)
    if @tutor_review.save
      redirect_to @tutor_review, notice: 'Tutor review was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tutor_review.update(tutor_review_params)
      redirect_to @tutor_review, notice: 'Tutor review was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tutor_review.destroy
    redirect_to tutor_reviews_url, notice: 'Tutor review was successfully destroyed.'
  end

  private

  def set_tutor_review
    @tutor_review = TutorReview.find(params[:id])
  end

  def tutor_review_params
    params.require(:tutor_review).permit(:session_id, :rating, :comment, :student_id)
  end
end

