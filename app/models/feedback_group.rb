class FeedbackGroup < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :feedback_cases
  validates_presence_of :name, :slug
  attr_accessible :name
end
