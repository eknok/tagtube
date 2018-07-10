require 'google/apis/youtube_v3'
require 'active_support/all'

def find_videos(keyword)
  service = Google::Apis::YoutubeV3::YouTubeService.new
  service.key = ENV["GOOGLE_YOUTUBE_API"]

  next_page_token = nil
  begin
    opt = {
      q: keyword,
      type: 'video',
      max_results: 30,
      order: :viewCount,
      page_token: next_page_token,
    }
    @results = service.list_searches(:snippet, opt)
    next_page_token = @results.next_page_token
  end
end
