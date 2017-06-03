class AddRightAnswersToChoiceQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :choice_questions, :right_answer_a, :boolean, default: false
    add_column :choice_questions, :right_answer_b, :boolean, default: false
    add_column :choice_questions, :right_answer_c, :boolean, default: false
    add_column :choice_questions, :right_answer_d, :boolean, default: false
  end
end
