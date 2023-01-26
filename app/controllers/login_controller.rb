class LoginController < ApplicationController
    def login

    end
    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Zalogowano pomyślnie"
        else
            flash.alert = "Niepoprawny email lub hasło"
            render :login
        end    
    end
    def destroy 
        session[:user_id]=nil
        redirect_to login_path, notice: "Wylogowano"
    end
    
end
