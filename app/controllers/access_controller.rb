class AccessController < ApplicationController

    def accessPage
        @accessContentList = Access.all
    end

end
