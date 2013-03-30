module RequestDsl

  def create_group
    fill_in 'Name', :with => 'My first group'
    click_on 'Go'
    FeedbackGroup.find_by_slug('my-first-group')
  end

  def create_case
    fill_in 'Name', :with => 'My first case'
    click_on 'Go'
    FeedbackCase.find_by_slug('my-first-case')
  end

end
