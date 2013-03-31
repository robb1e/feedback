class FeedbackController < ApplicationController

  before_filter do
    @feedback_group = FeedbackGroup.find_by_slug(params[:group_id])
  end

  def group
    if @feedback_group
      render 'feedback_groups/show'
    else
      render 'feedback_groups/new'
    end
  end

  def case
    if @feedback_group
      @feedback_case = @feedback_group.feedback_cases.where(slug: params[:case_id]).first
      if @feedback_case
        render 'feedback_cases/show'
      else
        redirect_to feedback_groups_show_path(params[:group_id])
      end
    else
      redirect_to feedback_groups_show_path(params[:group_id])
    end
  end
end
