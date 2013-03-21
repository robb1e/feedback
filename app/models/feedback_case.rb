class FeedbackCase < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :feedback_group
  validates_presence_of :name, :slug
  attr_accessible :name, :feedback_group, :feedback_group_id
end
