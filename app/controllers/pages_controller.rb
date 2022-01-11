class PagesController < ApplicationController
  def ask
  end

  def answer
    search = params[:question]
    answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if search == "I am going to work"
      @answer = answers[0]
    elsif search.ends_with?("?")
      @answer = answers[1]
    else
      @answer = answers[2]
    end
  end
end
