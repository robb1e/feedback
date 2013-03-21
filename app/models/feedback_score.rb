class FeedbackScore < ActiveRecord::Base
  belongs_to :feedback_case
  validates_presence_of :score
  attr_accessible :score, :feedback_case_id
end
