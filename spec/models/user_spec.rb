require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = build(:user)
      expect(user).to be_valid
    end

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:team) }
    it { should validate_uniqueness_of(:email) }
  end

  describe 'associations' do
    it { should belong_to(:team) }
  end
end