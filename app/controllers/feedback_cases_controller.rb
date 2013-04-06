class FeedbackCasesController < ApplicationController
  def create
    feedback_case = FeedbackCase.create!(params[:feedback_case])
    redirect_to case_path(feedback_case.feedback_group_slug, feedback_case.slug)
  end
end
