require 'spec_helper'

feature 'feedback stats' do

  scenario 'happy path' do
    When "the user is on the group stats page"
    Then "the user can see the happy score for the case"

    When "the user is on the case stats page"
    Then "the user sees the happy score has been entered"
  end

  let(:group) { FeedbackGroup.create(name: "Foo") }
  let(:cases) { FeedbackCase.create(feedback_group: group, name: "Bar") }

  before do
    FeedbackScore.create(score: 1, feedback_case_id: cases.id)
  end

  def the_user_is_on_the_group_stats_page
    visit_group_stats_page group
  end

  def the_user_can_see_the_happy_score_for_the_case
    within(".happy") do
      page.should have_content("1")
    end
  end

  def the_user_is_on_the_case_stats_page
    visit_case_stats_page group, cases
  end

  def the_user_sees_the_happy_score_has_been_entered
    page.should have_css("li.happy")
  end

end
