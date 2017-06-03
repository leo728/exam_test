class ChoiceQuestionsController < ApplicationController
  def index
    @choice_questions = ChoiceQuestion.all
  end

  def new
    @choice_question = ChoiceQuestion.new
  end

  def create
    @choice_question = ChoiceQuestion.new(choice_question_params)

    if @choice_question.save
      redirect_to choice_questions_path
    else
      render :new
    end
  end

  private

  def choice_question_params
    params.require(:choice_question).permit(:title, :option_a, :option_b, :option_c, :option_d, :right_answer_a, :right_answer_b, :right_answer_c, :right_answer_d)
  end

end
