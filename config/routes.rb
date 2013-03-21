Feedback::Application.routes.draw do
  # root :to => 'welcome#index'

  scope ":id" do
    get '', to: "feedback_groups#show", as: "feedback_groups"
  end
end
