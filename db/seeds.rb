# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rails g model choice_question title:text option_a:string option_b:string option_c:string option_d:string

# right_answer_a:boolean right_answer_b:boolean right_answer_c:boolean right_answer_d:boolean

# rails g model exam_paper user_id:integer choice_question_id:integer

add_column :exam_papers, :examinee_answer_a, :boolean, default: false
add_column :exam_papers, :examinee_answer_b, :boolean, default: false
add_column :exam_papers, :examinee_answer_c, :boolean, default: false
add_column :exam_papers, :examinee_answer_d, :boolean, default: false

add_column :choice_questions, :right_answer_a, :boolean, default: false
add_column :choice_questions, :right_answer_b, :boolean, default: false
add_column :choice_questions, :right_answer_c, :boolean, default: false
add_column :choice_questions, :right_answer_d, :boolean, default: false

rails g model exam_paper user_id:integer choicequestion_id:integer
