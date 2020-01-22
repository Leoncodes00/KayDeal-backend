class MessagesController < ApplicationController
    def index 
        render :json => Message.all 
    end

    def create 
        @message = Message.create(set_params_item)
    end

    def show
        render :json => Message.find(params[:id]) 
    end

    def edit 
        render :json => Message.find(params[:id]) 
    end

    def update 
        @message = Message.find(params[:id]) 
        @message.update(set_params_item)
        render :json => @message
    end

    def destroy
        @message = Message.find(params[:id])
        @message.destroy
      end

    private
    def set_params_messages 
        params.require(:message).permit(:user_id, :content)
    end
end
