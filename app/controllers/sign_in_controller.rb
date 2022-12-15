class SignInController < ApplicationController

    def index
        if current_user
            redirect_to feed_index_path
        end
    end

    def new 
        @user = User.create(params[:user])
    end

end
