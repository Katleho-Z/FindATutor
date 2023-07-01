class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  rescue ActiveRecord::RecordNotFound
    # Handle the case when the chatroom record is not found
    redirect_to root_path, alert: 'Chatroom not found.'
  end

  def create
    @student = current_user.student
    @tutor = Tutor.find(params[:tutor_id])
    @chatroom = Chatroom.find_by(student: @student, tutor: @tutor)

    unless @chatroom
      @chatroom = Chatroom.new
      @chatroom.student = @student
      @chatroom.tutor = @tutor
    end

    if @chatroom.save
      redirect_to @chatroom
    end

    # redirect_to chatroom_path(@chatroom)
  end
end
