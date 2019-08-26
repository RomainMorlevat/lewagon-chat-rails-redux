class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Channel.find_by(name: params[:channel_name]).messages

    render json: @messages
  end

  def create
  end
end
