class TrackController < ApplicationController
    def show
        @track = Track.find(params[:id])
        @user = current_user
        @comments = @track.comments
        @Users = User.all
        @track_like = @track.votes

        if current_user
        @like =  Vote.find_by(track: params[:id], user: current_user.id)
        end
        
    end


    def index

    end
end
