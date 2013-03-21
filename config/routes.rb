Feedback::Application.routes.draw do
  # root :to => 'welcome#index'

  resources :feedback_groups, only: [:create]

  scope ":id" do
    get '', to: "feedback_groups#show", as: "feedback_groups_show"
  end
end
