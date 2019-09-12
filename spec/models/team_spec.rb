require 'rails_helper'

RSpec.describe Team do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:groups) }
  end

  it 'is valid with valid attributes' do
    team = build(:team)
    expect(team).to be_valid
  end
end
