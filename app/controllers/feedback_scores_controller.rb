class FeedbackScoresController < ApplicationController
  def create
    feedback_score = FeedbackScore.create!(params[:feedback_score])
    feedback_case = feedback_score.feedback_case
    feedback_group = feedback_case.feedback_group
    redirect_to feedback_cases_show_path(feedback_group.slug, feedback_case.slug)
  end
end
