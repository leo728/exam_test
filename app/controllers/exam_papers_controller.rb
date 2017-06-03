class ExamPapersController < ApplicationController
  def edit
    # copy ExamPaper from Model ChoiceQuestion
    choice_questions = ChoiceQuestion.all

    choice_questions.each do |choice_question|
      exam_paper = ExamPaper.new
      exam_paper.choice_question_id = choice_question.id
      exam_paper.save
    end

    @exam_papers = ExamPaper.all
  end

  def index
    @choice_questions = ChoiceQuestion.all

    @choice_questions.each do |choice_question|
      exam_paper = ExamPaper.new
      exam_paper.choice_question = choice_question
      exam_paper.save!
    end

    # @choice_question = ChoiceQuestion.first
    # exam_paper = ExamPaper.new
    # exam_paper.choice_question = @choice_question
    # exam_paper.save!

    @exam_papers = ExamPaper.all
  end

  def create
    # data = Array.new
    # params.keys().each do |key|
    #   if key.is_a?(Integer)
    #   else
    #     data[] = key
    #   end
    # end
    # exam_papers = ExamPaper.find(data)
    # exam_papers.each do |exam_paper|
    #   exam_paper.examinee_answer_a = params[exam_paper.id]
    #   exam_paper.save!
    # end

    # ExamPaper.all.each do |exam_paper|
    #   if !exam_paper.examinee_answer_a
    #     exam_paper.update_attribute(:examinee_answer_a, params[exam_paper.id.to_s])
    #   end
    # end

    a= ExamPaper.first.id.to_s + 'test'
    s=params[a]
    debugger
    redirect_to exam_papers_path
  end

  def update
  end

  def submit_exam_paper
  end
end
