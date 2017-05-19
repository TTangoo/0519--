class SessionsController < ApplicationController
    def new
    end

    def create
        person = User.where(name: params[:name],
                            email: params[:email],
                            password: params[:password],
                            password_confirmation: params[:password_confirmation]).take
                            
                unless person.nil? #가입이 안되었다면 로그인시켜주기
                session[:user_id] = person.id
                end
            
        redirect_to '/posts/index'
    end

    def destroy
        reset_session
        redirect_to '/'

    end    
end
