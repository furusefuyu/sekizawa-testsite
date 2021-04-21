class ResearchController < ApplicationController

    def researchPage
        @researchContentList = Research.all
    end

end
