class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = if params[:question].downcase.include?('work') &&
                 params[:question].downcase.include?('go')
                'Great!'
              elsif params[:question][-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
