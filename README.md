# InstagramFeedByHashtag

This is an unofficial Instagram feed by hashtag ruby gem!

This gem provides an easy way to retrieve a JSON from Instagram, filtered by hashtag, without any authentication.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'instagram_feed_by_hashtag'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install instagram_feed_by_hashtag

## Usage


    Usage: InstagramFeedByHashtag.feed(hashtag, count) # hashtag => string; count => integer.

    Example: InstagramFeedByHashtag.feed('cars', 6) # Returns an JSON with 6 latest pics tagged with 'cars'.

    Full example: feed = InstagramFeedByHashtag.feed( 'cars', 6 ) # Make request and store JSON in feed variable
                  @images = [] # Define array
                  for i in 0..(feed.count - 1) # Loop through feed
                        @images << feed[i]['display_src'] unless feed[i].nil? # Grab images URLs and store them in @images
                  end

    In this JSON, you can find: ['display_src']
                               ['code']
                               ['owner']['id']
                               ['caption']
                               ['likes']
                               ['thumbnail_src']



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eduardoprauze/instagram_feed_by_hashtag.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

