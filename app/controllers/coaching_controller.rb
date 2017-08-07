class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    if @question == @question.upcase
      @answer = coach_answer_enhanced(@question)
    else
      @answer = coach_answer(@question)
    end
  end

  def ask
  end

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
    if your_message.downcase.split.include?("work")
      return 'Great.'
    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    regular_message = coach_answer(your_message)
    if regular_message == ''
      return regular_message
    else
      return 'I can feel your motivation! ' + regular_message
    end
  end

end
