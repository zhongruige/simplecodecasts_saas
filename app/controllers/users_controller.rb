class UsersController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id]) # Based on what gets passed through the URL, from the routes file (rake routes)
    end
end