# frozen_string_literal: true

require('rails_helper')

RSpec.describe(User, type: :model) do
  before :each do
    @user = User.create(email: 'carl@bond', name: 'carl', password: '123456')
  end

  context 'with valid details' do
    it 'should create a user' do
      expect(@user).to(be_valid)
    end
  end

  context 'with uppercase email' do
    it 'should downcase the email' do
      expect(@user.email).to(eq(@user.email.downcase))
    end
  end
end
