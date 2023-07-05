class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = @chatroom.messages.build(message_params)
    @message.sender = current_user

    if @message.save
      ChatroomChannel.broadcast_to(@chatroom, message: render_message(@message))
      head :ok
    else
      render json: { error: @message.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def render_message(message)
    ApplicationController.render(
      partial: 'messages/message',
      locals: { message: message }
    )
  end
end
