class FeedbackGroupsController < ApplicationController
  def create
    feedback_group = FeedbackGroup.create(params[:feedback_group])
    redirect_to group_path(feedback_group.slug)
  end
end
