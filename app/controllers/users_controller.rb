class UsersController < ApplicationController
    def index 
        render :json => User.all 
    end

    def create 
        @user = User.create(set_params_user)
    end

    def show
        render :json => User.find(params[:id]) 
    end

    private
    def set_params_user 
        params.require(:user).permit(:name, :email, :numSold, :location, :funds)
    end
end
