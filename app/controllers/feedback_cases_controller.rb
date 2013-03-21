class FeedbackCasesController < ApplicationController
  def create
    feedback_case = FeedbackCase.create!(params[:feedback_case])
    redirect_to feedback_cases_show_path(feedback_case.feedback_group.slug, feedback_case.slug)
  end

  def show
    @feedback_group = FeedbackGroup.find_by_slug(params[:feedback_group_id])
    @feedback_case = FeedbackCase.find_by_slug(params[:id])
  end
end
