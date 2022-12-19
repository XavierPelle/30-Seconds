class FeedController < ApplicationController
    
    def index
        @user = User.all
        @tracks = Track.all

        @trackslike = Track.all.sort_by{ |post| -post.votes.count }
        @trackstime =  @tracks.order(:created_at)
    end

end
