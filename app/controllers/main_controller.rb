class MainController < ApplicationController 
    def index
        console
        if session[:user_id] 
            @user = User.find(session[:user_id])
        end
    end
end