require 'spec_helper'

describe FeedbackScore do
  describe "#associations" do
    it { should belong_to :feedback_case }
    it { should validate_presence_of :score }
  end
end
