Feedback::Application.routes.draw do
  root :to => 'feedback#index'

  resources :feedback_groups, only: [:create]
  resources :feedback_cases, only: [:create]
  resources :feedback_scores, only: [:create]

  scope ":group_id" do
    get '', to: "feedback#group", as: 'group'
    get '/stats', to: 'feedback#group_stats', as: 'group_stats'
    get ':case_id', to: "feedback#case", as: 'case'
    get ':case_id/stats', to: "feedback#case_stats", as: "case_stats"
  end

end
