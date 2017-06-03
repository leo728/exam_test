class AddFkToExamPaper < ActiveRecord::Migration[5.0]
  def change
    add_column :exam_papers, :choice_question_id, :integer
  end
end
