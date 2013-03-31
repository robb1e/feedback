class FeedbackCase < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :feedback_group, touch: true
  has_many :feedback_scores
  validates_presence_of :name, :slug
  attr_accessible :name, :feedback_group, :feedback_group_id

  def score
    feedback_scores.reduce(0) { |sum, score| sum + score.score }
  end
end
