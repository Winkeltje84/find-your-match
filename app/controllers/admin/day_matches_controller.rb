class Admin::DayMatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_is_admin?


  private

  def user_is_admin?
    redirect_to :root unless current_user && current_user.admin?
  end
end
