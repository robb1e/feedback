class FeedbackGroupsController < ApplicationController
  def show
    @feedback_group = FeedbackGroup.find_by_slug(params[:id])
    if @feedback_group
      render 'show'
    else
      render 'new'
    end
  end

  def create
    feedback_group = FeedbackGroup.create(params[:feedback_group])
    redirect_to feedback_groups_show_path(feedback_group.slug)
  end
end
