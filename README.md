# RSS-reader-application

## Install Ruby Language
+ For Windows Machines visit [rubyinstaller.org](https://rubyinstaller.org/) and navigate to the Windows Download Page
+ When you have downloaded an installer of your choice, run it by double clicking the downloaded file. An installer dialog will appear on your screen.

## Install a Ruby IDE
+ We can use any Ruby IDE. I used Sublime Text for the project.
+ Sublime Text is a text editor for code, markup and prose
+ For installing Sublime Text, Visit [sublimetext.com](https://www.sublimetext.com/), and navigate to the Download Page
+ On the download page select the latest version for your Operating System Windows, Linux, OSX

## Libraries
+ [nokogiri](https://nokogiri.org/#installation)
+ open-uri

## Installing
+ For installing the nokogiri library we should run the following command in your command prompt
```
gem install nokogiri
```
+ open-uri will be pre-installed in the Ruby Language.

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
     - First, I created a new RssManager which is imported from rssManager.rb and loaded RSS Feed from url, to an RssChannel data model.
     - And printed the channel info following the items info from the channels.
     
## Result displayed
![image](https://user-images.githubusercontent.com/58819249/171253292-53d6fe26-70b6-4a9b-8dfd-f766b225866f.png)
