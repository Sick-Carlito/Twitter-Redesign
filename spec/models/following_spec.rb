require 'rails_helper'

RSpec.describe Following, type: :model do
  before :each do
    @follower = User.create(email: 'carl@bond', name: 'carl', password: '123456')
    @followed = User.create(email: 'carl1@bond', name: 'carl1', password: '123456')
    @following = Following.create(follower: @follower, followed: @followed)
  end
  context 'with valid followerd and followed details' do
    it 'should create a following' do
      expect(@following).to be_valid
    end
  end
end