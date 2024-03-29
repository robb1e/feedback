require 'spec_helper'

describe FeedbackGroup do
  describe "#associations" do
    it { should have_many :feedback_cases }
    it { should validate_presence_of :name }
    it { should validate_presence_of :slug }
  end
end
