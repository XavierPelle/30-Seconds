class CommentController < ApplicationController
    def create
        a = current_user.id
        b = User.find_by(id: a)
        c = params[:track]
        d = Track.find_by(id: c)
        @comment = Comment.new(:content => params[:content], :user => b, :track => d)
        if @comment.save
            redirect_to track_path(c)
        end
    end
end
