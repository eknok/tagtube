class ToppagesController < ApplicationController
  include TagsHelper
  def index
    require 'youtube.rb'
    if params[:keyword] && params[:number]
      tag_count(params[:keyword])
      find_videos(params[:keyword], params[:number])
      @keyword = params[:keyword]
      @number = params[:number]
    else # デフォルト
      find_videos('HIKAKIN', 10)
      @keyword = 'HIKAKIN'
      @number = 10
      @word = Tag.first
    end
  end

  def about
  end
end
