class QuestionsController < ActionController::Base
  def ask
    # raise
  end

  def answer
    @questions = params[:questions]
    if @questions.downcase == 'i am going to work right now!'
      @answers = 'FINALLY!'
    elsif @questions.ends_with?('?')
      @answers = 'Silly question, get dressed and go to work!'
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
