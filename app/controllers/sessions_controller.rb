class SessionsController < ApplicationController
    def new

    end
    def create         
        Current.user = User.find_by(email: params[:email])
        if Current.user.present? && Current.user.authenticate(params[:password])
            session[:user_id] = Current.user.id
            redirect_to root_path, notice: "You are logged in."
        else
            redirect_to sign_in_path, alert: "Invalid email or password."
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "You are logged out."
    end
end