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

    When "the user visits the group page"
    Then "the cases are listed"

    When "the user goes to a group which does not exist"
    Then "the user is prompted to create a group"
  end

  def an_anonymous_user
  end

  def the_user_visits_the_homepage
    visit root_path
  end

  def the_user_can_create_a_new_group
    @group = create_group
  end

  def the_user_visits_the_group_page
    visit_group_page @group
  end

  def the_cases_are_listed
    cases_should_be_listed @group.feedback_cases
  end

  def the_user_is_on_the_group_page
    should_be_on_group_page @group
  end

  def the_user_can_create_a_new_case
    @case = create_case
  end

  def the_user_is_on_the_case_page
    should_be_on_case_page @group, @case
  end

  def the_user_can_submit_a_happy_score
    click_on "Happy"
  end

  def the_user_goes_to_a_group_which_does_not_exist
    visit "/nyc"
  end

  def the_user_is_prompted_to_create_a_group
    page.should have_css(".new_feedback_group")
  end

end
