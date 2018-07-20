class ToppagesController < ApplicationController
  include TagsHelper # tag_count(word)
  def index
    if params[:keyword] && params[:number]
      @keyword = params[:keyword]
      @number = params[:number]
      tag_count(@keyword)
      find_videos(@keyword, @number)
    else # デフォルト
      @keyword = 'HIKAKIN'
      @number = 10
      find_videos(@keyword, @number)
      @word = Tag.first
    end
  end

  def about
  end
end
