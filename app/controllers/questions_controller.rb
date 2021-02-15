class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.downcase === 'i am going to work'
      @answer = 'Great!'
    elsif @question.downcase === 'what time is it?'
      @answer = Time.now
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don´t care, get dressed and go to work!'
    end
  end
end

# @question === 'What time is it?'
#       @answer = Time.now
