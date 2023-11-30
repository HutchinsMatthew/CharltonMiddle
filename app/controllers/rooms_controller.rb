class RoomsController < ApplicationController
  def index
    @current_user = current_user
    @rooms = Room.all
    @users = User.all_except(@current_user)
    @room = Room.new
  end

  def show
    @current_user = current_user
    @single_room = Room.find(params[:id])
    @rooms = Room.all
    @users = User.all_except(@current_user)
    @room = Room.new
    @message = Message.new
    @messages = @single_room.messages
  
    render "index"
  end

  def create
    @room = Room.create(name: params["room"]["name"])
  end

  def destroy
    redirect_to rooms_path
    @single_room = Room.find(params[:id])
    @single_room.messages.destroy_all
    @single_room.destroy
  end
end
