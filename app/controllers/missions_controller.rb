class MissionsController < ApplicationController
  def show
    @mission = Mission.find(params["id"])
    @modul_questions = @mission.modul_questions
  end

  def result
    binding.pry
  end
end
