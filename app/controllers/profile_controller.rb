class ProfileController < ApplicationController
  before_action :authenticate_user!
  def show
      @user = current_user
      @group_missions = @user.group.group_missions
      @missions_completed_id = @user.results.pluck(:mission_id)
  end



  end

