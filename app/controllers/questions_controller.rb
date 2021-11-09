class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    coach_answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if @answer == "I am going to work"
      @response = coach_answers[0]
    elsif @answer.include? "?"
      @response = coach_answers[1]
    else
      @response = coach_answers[2]
    end
  end
end
