class FeedController < ApplicationController
    
    def index
        @user = User.all
        @tracks = Track.all

    end

end
