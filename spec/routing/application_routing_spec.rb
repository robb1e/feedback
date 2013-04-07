require 'spec_helper'

describe 'Application routes' do
  it 'routes /group to feedback#group' do
    expect(get: '/groupname').to route_to(
      controller: 'feedback',
      action: 'group',
      group_id: 'groupname'
    )
  end

  it 'routes /group/stats to feedback#feedback_stats' do
    expect(get: '/groupname/stats').to route_to(
      controller: 'feedback',
      action: 'group_stats',
      group_id: 'groupname'
    )
  end

  it 'routes /group/case to feedback#case' do
    expect(get: '/groupname/casename').to route_to(
      controller: 'feedback',
      action: 'case',
      group_id: 'groupname',
      case_id: 'casename'
    )
  end

  it 'routes /group/case/stats to feedback#case_stats' do
    expect(get: '/groupname/casename/stats').to route_to(
      controller: 'feedback',
      action: 'case_stats',
      group_id: 'groupname',
      case_id: 'casename'
    )
  end
end
