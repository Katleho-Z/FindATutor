class StudentReviewsController < ApplicationController
  before_action :set_student_review, only: [:show, :edit, :update, :destroy]

  def index
    @student_reviews = StudentReview.all
  end

  def show
  end

  def new
    @student_review = StudentReview.new
  end

  def create
    @student_review = StudentReview.new(student_review_params)
    if @student_review.save
      redirect_to @student_review, notice: 'Student review was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @student_review.update(student_review_params)
      redirect_to @student_review, notice: 'Student review was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @student_review.destroy
    redirect_to student_reviews_url, notice: 'Student review was successfully destroyed.'
  end

  private

  def set_student_review
    @student_review = StudentReview.find(params[:id])
  end

  def student_review_params
    params.require(:student_review).permit(:session_id, :rating, :comment, :tutor_id)
  end
end
