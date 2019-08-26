class ChannelsController < ApplicationController
  def show
    if params[:name].blank?
      redirect_to channel_path(Channel.first.name)
    else
      @channel = Channel.find_by(name: params[:name])
      @channels = Channel.all
    end
  end
end
