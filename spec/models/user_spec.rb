require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { User.new(name: 'carl', email:'carl@carl', password:'123456') }
  let(:user2) { User.new(name: 'carl1', email:'carl1@carl', password:'123456') }

  describe 'validates user attributes' do
    it 'validates if the user is valid' do
      expect(user1.valid?).to eql(true)
    end
   
    it 'validates if the name is present' do
      user1.name = ' '
      expect(user1.valid?).not_to eql(true)
    end

    it 'validates if the name is not too long' do
      user1.name = 'a' * 51
      expect(user1.valid?).not_to eql(true)
    end

    it 'validates if the names are unique' do
      duplicate_user = user1.dup
      user1.save
      expect(duplicate_user.valid?).not_to eql(true)
    end
  
  end

  describe 'validates Following associations' do
    it 'validates if user is added to users followeds' do
      user1.save
      user2.save
      Following.create(follower_id: user1.id, followed_id: user2.id)
      expect(user1.following?(user2)).to eql(true)
    end
  end
end