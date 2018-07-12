class TagsController < ApplicationController
  def index
    @tags = Tag.all.order('count DESC')
  end

  def new
    @word = Tag.new
  end

  def create
  end

  def show
  end

  private

  def tag_params
    params.require(:tag).permit(:word)
  end
end
