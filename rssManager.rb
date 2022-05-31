require 'open-uri'
require 'nokogiri'
require_relative 'rssData.rb'

class RssManager
    def ChannelFromUrl(rssUrl)

        # Read rss from url (using nokogiri library)
        xmlDoc = Nokogiri.XML(URI.open(rssUrl))

        # Get rss channel node
        rssChannelNode = xmlDoc.root.at_xpath("channel")

        # Create New RSS Channel
        rssChannel = RssChannel.new
        rssChannel.Title =  xmlDoc.root.at_xpath("channel/title").content
        rssChannel.Link =  rssChannelNode.at_xpath("link").content
        rssChannel.lastBuildDate =  rssChannelNode.at_xpath("lastBuildDate").content
        rssChannel.Description =  rssChannelNode.at_xpath("description").content
        rssChannel.RssItems = ItemsFromUrl(rssUrl)

        return rssChannel
    end

    def ItemsFromUrl(rssUrl)
        # Read RSS from url (using nokogiri library)
        xmlDoc = Nokogiri::XML(URI.open(rssUrl))

        # Get Xml Nodes
        rssItemNodes = xmlDoc.root.xpath("channel/item")

        # Store RssItems temporarily
        rssItems = []

        for index in 0..rssItemNodes.length - 1 do
            
            # Create New RSSItem
            rssItem = RssItem.new
            rssItem.Title = rssItemNodes[index].at_xpath("title").content
            rssItem.Link = rssItemNodes[index].at_xpath("link").content
            rssItem.Guid = rssItemNodes[index].at_xpath("guid").content
            rssItem.PubDate = rssItemNodes[index].at_xpath("pubDate").content
            rssItem.Description = rssItemNodes[index].at_xpath("description").content
            rssItem.Source = rssItemNodes[index].at_xpath("source").content
            
            # Adds new RSSItem to an array
            rssItems.push(rssItem)

        end

        return rssItems
    end

end