require 'google/apis/youtube_v3'
require 'active_support/all'

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
