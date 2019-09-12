require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'associations' do
    it { should belong_to(:team) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }

    it 'is valid with valid attributes' do
      group = build(:group)
      expect(group).to be_valid
    end
  end
end 
