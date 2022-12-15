class ProfilController < ApplicationController
    
    def index 
        @user = User.all
        @tracks = Track.where(user: current_user)
    end

    def show 
        @user = User.find(params[:id])
    end
end
