class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #特定のユーザ@userに関連付けられたすべて.post_imagesを取得、@post_imagesに渡す
    @post_images = @user.post_images
    
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name,:profile_image)
  end
end
