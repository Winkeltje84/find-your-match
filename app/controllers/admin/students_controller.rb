class Admin::StudentsController < ApplicationController
  before_action :authenticate_user!
  before_action :user_is_admin?

  def index
    @students = Student.all

  end

  def show
    render_user
  end

private

  def user_is_admin?
    redirect_to :root unless current_user && current_user.admin?
  end

  def render_user
    @user = User.find(params[:id])
  end

end
