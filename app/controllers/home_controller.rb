class HomeController < ApplicationController
    
    def homePage
        @topTopicContentList = Home.where(kind: "topTopic")
        @topicContentList = Home.where(kind: "topic")
    end
end
