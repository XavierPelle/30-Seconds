class TrackController < ApplicationController
    def show
        @track = Track.find(params[:id])
        @user = User.find(params[:id])
        @track_com = @track.comments
    end

    def create

    end
end
