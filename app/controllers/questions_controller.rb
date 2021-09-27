class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    # @answer = ''
    # @answer = begin
    #   case @question
    #   when "I am going to work" then "Great!"
    #   when @question.ends_with?('?') then "Silly question, get dressed and go to work!"
    #   else "I don't care"
    #   end
    # end
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
