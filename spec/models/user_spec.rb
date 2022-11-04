require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'Shaheer', email: 'Shaheer@gmail.com', password: 929_009,
                     password_confirmation: 929_009)
  end

  context 'validations' do
    it 'valid with valid attributes' do
      @user.save
      expect(@user).to be_valid
    end

    it 'invalid without email' do
      @user.email = nil
      @user.save
      expect(@user).to_not be_valid
    end

    it 'invalid without password' do
      @user.password = nil
      @user.save
      expect(@user).to_not be_valid
    end
  end

  context 'associations' do
    it 'has multiple foods' do
      t = User.reflect_on_association(:foods)
      expect(t.macro).to eq :has_many
    end

    it 'has multiple recipes' do
      t = User.reflect_on_association(:recipes)
      expect(t.macro).to eq :has_many
    end
  end
end
