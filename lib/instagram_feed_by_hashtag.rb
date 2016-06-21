require "instagram_feed_by_hashtag/version"

module InstagramFeedByHashtag

  def self.feed(hashtag, how_many)
    require 'net/http'
    url_raw = 'https://www.instagram.com/explore/tags/'+ hashtag +'/?__a=1'
    url = URI.parse("#{url_raw}")
    begin
      resp = Net::HTTP.get(url)
    rescue Errno::ETIMEDOUT, Errno::EINVAL, Errno::ECONNRESET, EOFError, Net::HTTPBadResponse => e
      resp = false
    end
    unless resp == false
      result = []
      parsed_json = JSON.parse(resp)
      for i in 0..(how_many - 1)
        result << parsed_json['tag']['media']['nodes'][i] unless parsed_json['tag']['media']['nodes'][i].nil?
      end
    end
    result
  end

end

