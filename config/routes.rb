Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'choice_questions#index'

  resources :choice_questions

  resources :exam_papers do
    # post :submit_exam_paper
  end

  # post 'submit_exam_paper', to: :edit, controller: 'exam_papers'
  # post 'submit_exam_paper', to: 'exam_papers#edit'
end
