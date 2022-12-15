class DrumsController < ApplicationController
    def index
        @track = Track.where(user: current_user)
    end

    def create
        puts "-" * 60
        puts params[:input]
        puts "-" * 60
        if params[:input]
            track = Track.new(title: params[:title], inputs: params[:input], duration: 30, user: current_user)
            puts "-" * 60
            puts track

            if track.save
                redirect_to drums_path
            end
        end
        if params[:fusioninput]
            track = Track.new(title: params[:title], inputs: params[:fusioninput], duration: 30, user: current_user)
            puts "-" * 60
            puts track

            if track.save
                redirect_back(fallback_location: root_path)
            end
        end
    end
end
