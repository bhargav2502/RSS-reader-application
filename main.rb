require_relative 'rssManager.rb'
require_relative 'rssData.rb'

class Application
    def Execute

        # Rss feed url from Google news!
        rssUrl = "https://news.google.com/rss"

        # Create new RssManager which is imported from rssManager.rb
        rssManager = RssManager.new
    end
end
