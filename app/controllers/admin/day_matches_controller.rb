class Admin::DayMatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_is_admin?

  def index
    # debugger
    @day_matches = DayMatch.all
    # debugger
  end

  private

  def user_is_admin?
    redirect_to :root unless current_user && current_user.admin?
  end
end
