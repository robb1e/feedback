require 'spec_helper'

feature 'creating feedback' do

  scenario 'happy path' do
    Given "an anonymous user"
    When "the user visits the homepage"
    Then "the user can create a new group"

    When "the user is on the group page"
    Then "the user can create a new case"

    When "the user is on the case page"
    Then "the user can submit a happy score"

    When "the user is on the stats page"
    Then "the user sees the happy score has been entered"
  end

  def an_anonymous_user
  end

  def the_user_visits_the_homepage
    visit root_path
  end

  def the_user_can_create_a_new_group
    @group = create_group
  end

  def the_user_is_on_the_group_page
    current_path.should == feedback_groups_show_path(@group)
  end

  def the_user_can_create_a_new_case
    @case = create_case
  end

  def the_user_is_on_the_case_page
    current_path.should == feedback_cases_show_path(@group, @case)
  end

  def the_user_can_submit_a_happy_score
    click_on "Happy"
  end

  def the_user_is_on_the_stats_page
    visit feedback_stats_path(@group, @case)
  end

  def the_user_sees_the_happy_score_has_been_entered
    page.should have_content("score: 1")
  end

end
