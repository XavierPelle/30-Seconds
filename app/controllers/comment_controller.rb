class CommentController < ApplicationController
    def create
        a = current_user.id
        b = User.find_by(id: a)
        c = params[:track]
        d = Track.find_by(id: c)
        @comment = Comment.create(:content => params[:content], :user => b, :track => d)
        puts @comment.inspect
    end
end
