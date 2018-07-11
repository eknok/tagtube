class TagsController < ApplicationController
  def index
  end

  def new
    @word = Tag.new
  end

  def create
    if @word = Tag.find_by(tag_params)
      @word.count += 1
      @word.save
    else
      @word = Tag.create(tag_params)
    end
    redirect_to root_path
  end

  def show
  end

  private

  def tag_params
    params.require(:tag).permit(:word)
  end
end
