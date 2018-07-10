class ToppagesController < ApplicationController
  def index
    require 'youtube.rb'
    find_videos("HIKAKIN")
  end

  def about
  end
end
