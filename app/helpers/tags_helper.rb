module TagsHelper
  def tag_count(word)
    if @word = Tag.find_by(word: word)
      @word.count += 1
      @word.save
    else
      @word = Tag.create(word: word)
    end
  end

  def find_videos(keyword, number)
    service = Google::Apis::YoutubeV3::YouTubeService.new
    service.key = ENV["GOOGLE_YOUTUBE_API"]
    begin
      opt = {
        q: keyword,
        type: 'video',
        max_results: number,
        order: :viewCount,
      }
      @results = service.list_searches(:snippet, opt)
    end
  end

end
