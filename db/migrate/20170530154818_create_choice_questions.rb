class CreateChoiceQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :choice_questions do |t|
      t.text :title
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d

      t.timestamps
    end
  end
end
