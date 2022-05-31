# RSS-reader-application

## Libraries
+ [nokogiri](https://nokogiri.org/#installation)
+ open-uri

## Execution
+ After installing the above libraries, Execute the main.rb file using below command in the directory folder
```
ruby main.rb
```
___

## Information
RSS Stands for Really Simple Syndication and is a type of web feed which allows users and applications to access data on websites in a standardized, computer-readable format. The program downloads and displays the RSS Feed of Google News!
+ ### rssData.rb
     - The file contains the data models that will be used to manage and store RSS data from an online RSS feed.
     - We will need to create two Data Models:
      the RssChannel Model for storing information about the RSS Feed, and the RssItem Model for storing data from items inside a RssChannel.
+ ### rssManager.rb
     - The rssManager.rb file is our custom Library/API to extract and parse data from online RSS Feeds.
     - The rssManager.rb makes use of 2 libraries that are called open-uri and nokogiri.
     - The open-uri library is used for HTTP, HTTPS or FTP connections and allows the user to open a URL as though it were a file. The nokogiri library is used for parsing XML Files.
     - The rssManager.rb also implements the rssData.rb we have created earlier to manage and store data from our RSS Feed
+ ### main.rb
     - The Main.rb file is the entry point of our RSS Reader Application. Usually In computer programming, an entry point is where the first instructions of a program are executed.
     
## Result displayed
![image](https://user-images.githubusercontent.com/58819249/171253292-53d6fe26-70b6-4a9b-8dfd-f766b225866f.png)
