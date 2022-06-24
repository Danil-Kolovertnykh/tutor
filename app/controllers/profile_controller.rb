class ProfileController < ApplicationController
  before_action :authenticate_user!
  def show
      @user = current_user
      @group_missions = @user.group.group_missions
      @results = @user.results
  end



  end

