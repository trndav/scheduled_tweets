class MainController < ApplicationController 
    def index
        console
        flash[:notice] = "Welcome to index page!"
        flash[:alert] = "Something is not right"

    end
end