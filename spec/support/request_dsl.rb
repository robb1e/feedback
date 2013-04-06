module RequestDsl

  def create_group
    fill_in 'Name', :with => 'My first group'
    click_on 'Create'
    FeedbackGroup.find_by_slug('my-first-group')
  end

  def create_case
    fill_in 'Name', :with => 'My first case'
    click_on 'Create'
    FeedbackCase.find_by_slug('my-first-case')
  end

  def should_be_on_group_page group
    current_path.should == group_path(group)
  end

  def should_be_on_case_page group, cases
    current_path.should == case_path(group, cases)
  end

  def visit_case_stats_page group, cases
    visit case_stats_path(group, cases)
  end

  def visit_group_stats_page group
    visit group_stats_path(group)
  end

  def visit_group_page group
    visit group_path(group)
  end

  def cases_should_be_listed cases
    cases.each do |feedback_case|
      page.should have_content(feedback_case.name)
    end
  end

end
