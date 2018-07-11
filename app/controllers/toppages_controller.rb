class ToppagesController < ApplicationController
  def index
    require 'youtube.rb'
    if params[:keyword] && params[:number]
      find_videos(params[:keyword], params[:number])
      @keyword = params[:keyword]
      @number = params[:number]
    else # デフォルト
      find_videos('HIKAKIN', 10)
      @keyword = 'HIKAKIN'
      @number = 10
    end
  end

  def about
  end
end
