require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'returns the users name' do
    user = build(:user, name: 'Frank')
    expect(user.name).to eq 'Frank'
  end
end
