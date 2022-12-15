class SettingsController < ApplicationController
    def index

    end

    def create
        current_user.update({:pseudo => params[:pseudo], :description => params[:description], :avatar => params[:avatar]})
    end
end
