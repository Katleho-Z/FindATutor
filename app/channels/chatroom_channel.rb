class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:chatroom_id])
    stream_from "chatroom:#{chatroom.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    message = current_user.messages.create!(content: data['message'], chatroom_id: params[:chatroom_id])
    self.class.broadcast_to(@chatroom, message: render_message(message))
  end

  private

  def render_message(message)
    ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
  end

end
