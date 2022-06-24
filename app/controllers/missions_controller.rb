class MissionsController < ApplicationController
  def show
    @mission = Mission.find(params["id"])
    @modul_questions = @mission.modul_questions
    if Result.find_by(user_id: current_user.id, mission_id: @mission.id).present?
      redirect_to root_path
    else
      @result = Result.create(user_id: current_user.id, mission_id: @mission.id)

    end
  end

  def result
    question = Question.find(params["type"])
    if question.right_answer.present?
      question.right_answer == params["answer"]
    end
  end

end
