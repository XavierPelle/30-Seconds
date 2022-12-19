class SettingsController < ApplicationController
    def index

    end

    def create
        if params[:avatar]
            current_user.update({:avatar => params[:avatar]})
        end
        if params[:description] != ""
            current_user.update({:description => params[:description]})
        end
        if params[:pseudo] != ""
            current_user.update({:pseudo => params[:pseudo]})
        end

        redirect_back(fallback_location: root_path)
    end
end
