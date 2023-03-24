class SessionsController < ApplicationController
    def create
        #find user
        user=User.find_by(Username: params[:username])
        #assign session to user.id
        session[:user_id]=user.id
        render json: user
    end
    def destroy
        session.delete :user_id
        head :no_content
    end
end
