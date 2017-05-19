class UsersController < ApplicationController
    def index
    end
    
    def  new
    end
    
    def create
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.password_confirmation = params[:password_confirmation]
    user.save
    
    redirect_to '/sessions/new'
    end
    
end
