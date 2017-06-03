class CreateExamPapers < ActiveRecord::Migration[5.0]
  def change
    create_table :exam_papers do |t|
      t.integer :user_id
      t.integer :choicequestion_id

      t.timestamps
    end
  end
end
