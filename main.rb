require_relative 'rssManager.rb'
require_relative 'rssData.rb'

class Application
    def Execute

        # Rss feed url from Google news!
        rssUrl = "https://news.google.com/rss"

        # Create new RssManager which is imported from rssManager.rb
        rssManager = RssManager.new

        # Load RSS Feed from url, to an RssChannel data model
        rssChannel = rssManager.ChannelFromUrl(rssUrl)
        
        # Print channel info
        puts rssChannel.Title
        puts rssChannel.Link
        puts rssChannel.lastBuildDate
        puts rssChannel.Description

        # Print RssItem(s) from an RssChannel
        for index in 0..rssChannel.RssItems.length - 1 do
            puts rssChannel.RssItems[index].Title
            puts rssChannel.RssItems[index].Link
            puts rssChannel.RssItems[index].Guid
            puts rssChannel.RssItems[index].PubDate
            puts rssChannel.RssItems[index].Description
            puts rssChannel.RssItems[index].Source
        end

    end
end

# Run application
application = Application.new
application.Execute
