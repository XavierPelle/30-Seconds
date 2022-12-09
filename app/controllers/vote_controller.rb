class VoteController < ApplicationController

    def create 
        a = current_user.id
        b = User.find_by(id: a)
        c = params[:track]
        d = Track.find_by(id: c)
        @like = Vote.new(user: b , track: d)
        if @like.save
            redirect_to track_path(c)
        end
        
    end

end


