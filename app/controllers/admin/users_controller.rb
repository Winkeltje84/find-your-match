class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :user_is_admin?

  def index
    @users = User.all
  end

  def show
    user = User.find(params[:id])
  end

  def update
    switch_admin_student
  end

  def edit
    @user = User.find(params[:id])
  end


private

  def user_is_admin?
    redirect_to :root unless current_user && current_user.admin?
  end

  def switch_admin_student
    @user = User.find(params[:id])

    if (@user.admin === true)
      @user.update_attributes(admin: false)
    else
      @user.update_attributes(admin: true)
    end
    redirect_to admin_users_path
  end

end
