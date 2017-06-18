class UsersController < ApplicationController
  before_action :authenticate_login!, except: [:index, :show]
  before_action(:get_user, only: [:show,:edit,:update,:destroy])
  def index
    @users=User.all
 end
  def new
    @user=User.new
 end
   def create
    @user=User.create(user_params)
    redirect_to_user_if_valid(:new, 'Your new find was just created!')
end
   def show
     get_user
 end

   def update
    get_user
    @user.update(user_params)
   redirect_to_user_if_valid(:new, "Your find has been updated.")
 end
    def destroy
      @user.destroy
  end

    private
   def user_params
    params[:user].permit(:title,:body)
  end
   def get_user
     @user=User.find(params[:id])
  end
    def redirect_to_user_if_valid(action,message)
      if @user.valid?
        redirect_to(@user, notice: message)
      else
        render(action)
 end
 end
end

