class TrackController < ApplicationController
    def show
        @track = Track.find(params[:id])
        @user = User.find(params[:id])
        @track_com = @track.comments
        @track_like = @track.votes

        if current_user
        @like =  Vote.find_by(track: params[:id], user: current_user.id)
        end
        
    end

    def create

    end
end
