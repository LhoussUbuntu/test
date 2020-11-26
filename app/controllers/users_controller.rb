class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:show]
  
    def index
      @q = User.ransack(params[:q])
      @users = @q.result(distinct: true)
    end
  
    def show; end

    def add_user
      @user = User.create(car_params)
      respond_to do |format|
        if @memo.valid?
          format.html { redirect_to root_path, notice: 'Utilisateur was successfully created.' }
        else
          format.html { render :add_user }
        end
      end
    end

    def form_user
      @user = User.new
    end
  
    private
  
    def set_user
      @user = User.find(params[:id])
    end
  
    def users_params
      params.permit(:id)
    end
end
