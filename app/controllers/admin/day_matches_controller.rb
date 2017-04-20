class Admin::DayMatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_is_admin?

  def index
    # debugger
    @day_matches = DayMatch.all
    # debugger
  end

  def create
    # called from view to create a new set of day_matches
    debugger
    # current_day = Date.today
    # create_day_matches(current_day)
    create_day_matches
  end

  def create_day_matches
    debugger
  end

  def new
    # called for every new day_matches line
  end


  private

  def user_is_admin?
    redirect_to :root unless current_user && current_user.admin?
  end

end
