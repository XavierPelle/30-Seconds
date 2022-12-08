class TrackController < ApplicationController
    def show
        @track = Track.find(params[:id])
        @user = User.find(params[:id])
        @comment = Comment.find(params[:id])
    end

    def create
        @track = Track.find(params[:id])
        @comment = Comment.create(:text => params[:text], :user_id => current_user.id, :track_id => params[:id])
    end
end
