require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'Alert when project past due date' do
    project = build(:project, due_date: Date.today.next_day)
    expect(project.current).to eq false
  end
  it 'Returns true when project is still current' do
    project = build(:project, due_date: Date.today.prev_day)
    expect(project.current).to eq true
  end
end
