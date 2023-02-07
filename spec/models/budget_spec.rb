require 'rails_helper'

RSpec.describe Budget, type: :model do
  it 'lets you know if the budget is over' do
    budget = build(:budget)
    expect(budget.in_budget?).to eq true
    budget = build(:budget, total: 10)
    expect(budget.in_budget?).to eq false
    budget = build(:budget, spent: 75)
    expect(budget.in_budget?).to eq false
    budget = build(:budget, allocated: 75)
    expect(budget.in_budget?).to eq false

  end
  it 'should not say you are over budget if at 0' do
    budget = build(:budget, allocated: 50)
    expect(budget.in_budget?).to eq true
  end
end
