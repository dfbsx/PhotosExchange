class LoginController < ApplicationController
    def login

    end
    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to home_path
        else
            flash[:notice] = "Niepoprawny email lub hasło"
            redirect_to login_path
        end    
    end
    def destroy 
        session[:user_id]=nil
        redirect_to login_path, notice: "Wylogowano"
    end
    
end
