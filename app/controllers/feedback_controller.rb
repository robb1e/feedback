class FeedbackController < ApplicationController

  before_filter do
    @feedback_group = FeedbackGroup.find_by_slug(params[:group_id])
    if @feedback_group
      @feedback_case = @feedback_group.feedback_cases.where(slug: params[:case_id]).first
    end
  end

  before_filter only: [:case, :case_stats] do
    if @feedback_case.nil?
      redirect_to group_path(@feedback_group)
    end
  end

  def group
    if @feedback_group
      render 'feedback_groups/show'
    else
      render 'feedback_groups/new'
    end
  end

  def group_stats
    render 'feedback_groups/stats'
  end

  def case
    render 'feedback_cases/show'
  end

  def case_stats
    render 'feedback_cases/stats'
  end
end
