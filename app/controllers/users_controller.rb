class UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update]

  def index
    @users = User.all
    @book = Book.new
    @user = current_user

  end

  def show

    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  if @user.update(user_params)
    redirect_to user_path(@user)
  flash[:notice]='You have updated user successfully.'
  else
    render :edit
  end
  end


   private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def current_user?(user)
    user == current_user
  end


 def ensure_correct_user
    user = User.find(params[:id])
     redirect_to user_path(current_user) unless current_user?(user)

 end
end


