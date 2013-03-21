require 'spec_helper'

describe FeedbackCase do
  describe "#associations" do
    it { should belong_to :feedback_group }
    it { should have_many :feedback_scores }
    it { should validate_presence_of :name }
    it { should validate_presence_of :slug }
  end
end
