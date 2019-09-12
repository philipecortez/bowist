require 'rails_helper'

RSpec.describe User do
  before do
    @user = build(:user)
  end

  it 'is valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'is not valid without a name' do
    @user.name = nil
    @user.valid?
    expect(@user.errors.full_messages).to eq(['Name can\'t be blank'])
  end

  it 'is not valid without an email' do
    @user.email = nil
    @user.valid?
    expect(@user.errors.full_messages).to eq(['Email can\'t be blank'])
  end

  it 'is not valid without a password' do
    @user.password = nil
    @user.valid?
    expect(@user.errors.full_messages).to eq(['Password can\'t be blank'])
  end

  it 'is not valid with a repeated email' do
    @user.save!
    user2 = build(:user, email: @user.email)
    user2.valid?
    expect(user2.errors.full_messages).to eq(["Email has already been taken"])
  end
end