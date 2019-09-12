require 'rails_helper'

RSpec.describe Team do
  before do
    @team = build(:team)
  end

  it 'is not valid without a name' do
    @team.name = nil
    @team.valid?
    expect(@team.errors.full_messages).to eq(['Name can\'t be blank'])
  end

  it 'is valid with valid attributes' do
    expect(@team).to be_valid
  end
end
