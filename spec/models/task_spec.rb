require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'Alert when task past due date' do
    task = build(:task, due_date: Date.today.next_day)
    expect(task.current?).to eq false
  end
  it 'Returns true when task is still current' do
    task = build(:task, due_date: Date.today.prev_day)
    expect(task.current?).to eq true
  end
  it 'ignores tasks due_date when not current' do
    task = build(:task, due_date: Date.today.next_day, status: 1)
    expect(task.current?).to eq true
    task = build(:task, due_date: Date.today.next_day, status: 2)
    expect(task.current?).to eq true
  end
end
