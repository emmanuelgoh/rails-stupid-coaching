class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer == "I am going to work"
      @answers = {1 => { answer: "Great!", question: "I am going to work" }}
    elsif @answer.last == "?"
      @answers = {1 => { answer: "Silly question, get dressed and go to work!", question: @answer }}
    else
      @answers = {1 => { answer: "I don't care, get dressed and go to work!", question: @answer }}
    end
  end

  ANSWERS = {
    1 => { answer: "Great!", question: "I am going to work" },
    2 => { answer: "Silly question, get dressed and go to work!", question: "?" },
    3 => { answer: "I don't care, get dressed and go to work!", question: "else" }
  }
end


