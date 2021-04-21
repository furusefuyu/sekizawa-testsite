class LinkController < ApplicationController

    def linkPage
        @linkContentList = Link.all
    end

end
