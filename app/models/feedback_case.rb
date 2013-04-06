class FeedbackCase < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :feedback_group, touch: true
  has_many :feedback_scores
  validates_presence_of :name, :slug
  attr_accessible :name, :feedback_group, :feedback_group_id

  def feedback_group_slug
    feedback_group.slug
  end

  def unhappy_count
    feedback_scores.where(score: -1).count
  end

  def meh_count
    feedback_scores.where(score: 0).count
  end

  def happy_count
    feedback_scores.where(score: 1).count
  end

  def score
    feedback_scores.reduce(0) { |sum, score| sum + score.score }
  end
end
