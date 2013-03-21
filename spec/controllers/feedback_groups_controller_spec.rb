require 'spec_helper'

describe FeedbackGroupsController do

  describe "#show" do

    before do
      FeedbackGroup.should_receive(:find_by_slug).with('foo-bar') { feedback_group }
    end

    context "feedback group exists" do
      let(:feedback_group) { stub }
      it 'renders show' do
        get :show, id: 'foo-bar'
        response.should render_template('show')
      end
    end

    context "feedback group does not exist" do
      let(:feedback_group) { nil }
      it 'renders new' do
        get :show, id: 'foo-bar'
        response.should render_template('new')
      end
    end
  end
end
