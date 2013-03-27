Feedback::Application.routes.draw do
  root :to => 'feedback#index'

  resources :feedback_groups, only: [:create]
  resources :feedback_cases, only: [:create]
  resources :feedback_scores, only: [:create]

  scope ":group_id" do
    get '', to: "feedback#group"
    get ':case_id', to: "feedback#case"
  end

  scope ":id" do
    get '', to: "feedback_groups#show", as: "feedback_groups_show"
  end

  scope ":feedback_group_id" do
    get ':id', to: "feedback_cases#show", as: "feedback_cases_show"
  end

end
