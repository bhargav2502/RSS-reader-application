class RssChannel

    def Title=(t)
      @Title = t
    end
    def Title
      @Title      
    end
  
    def Link=(t)
      @Link = t
    end
    def Link
      @Link      
    end
  
    def lastBuildDate=(t)
      @lastBuildDate = t
    end
    def lastBuildDate
      @lastBuildDate      
    end
  
    def Description=(t)
      @Description = t
    end
    def Description
      @Description      
    end
  
    def RssItems=(t)
      @RssItems = t
    end
    def RssItems
      @RssItems      
    end
  
  end
  
  class RssItem
    
    def Title=(t)
      @Title = t
    end
    def Title
      @Title      
    end
  
    def Link=(t)
      @Link = t
    end
    def Link
      @Link      
    end
  
    def Guid=(t)
      @Guid = t
    end
    def Guid
      @Guid      
    end
  
    def PubDate=(t)
      @PubDate = t
    end
    def PubDate
      @PubDate      
    end
  
    def Description=(t)
      @Description = t
    end
    def Description
      @Description      
    end
  
    def Source=(t)
      @Source = t
    end
    def Source
      @Source
    end 
  
  end