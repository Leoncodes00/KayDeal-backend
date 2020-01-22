class UsersController < ApplicationController
    def index 
        render :json => User.all 
    end

    def create 
        @user = User.create(set_params_user)
        render :json => @user
    end

    def show
        render :json => User.find(params[:id]) 
    end

    def edit 
        render :json => User.find(params[:id]) 
    end

    def update 
        @user = User.find(params[:id])
        @user.update(set_params_user)
        render :json => @user
    end

    private
    def set_params_user 
        params.require(:user).permit(:name, :password, :email, :numSold, :location, :funds)
    end
end
