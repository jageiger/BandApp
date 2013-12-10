class UsersController < ApplicationController
  before_action only: [ :edit, :update]

  def show
  	 @user=User.find(params[:id])
  	
  end
  def index
  	@users=User.all
  	@user=current_user
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to action: :index
  end
end


