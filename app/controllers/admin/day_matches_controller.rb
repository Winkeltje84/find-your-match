class Admin::DayMatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_is_admin?

  def index
    @day_matches = DayMatch.all
  end

  def create
    # called from view to create a new set of day_matches
    DayMatch.create_day_matches
    redirect_to admin_day_matches_path
    # IT BREAKS HERE
  end

  private

  def user_is_admin?
    redirect_to :root, notice: "Pretty sure you're no admin..." unless current_user && current_user.admin?
  end
end
