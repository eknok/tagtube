module TagsHelper
  def tag_count(word)
    if @word = Tag.find_by(word: word)
      @word.count += 1
      @word.save
    else
      @word = Tag.create(word: word)
    end
  end
end
