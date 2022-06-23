class MissionsController < ApplicationController
  def show
    @mission = Mission.find(params["id"])
    @modul_questions = @mission.modul_questions
  end

  def result

  end
end
