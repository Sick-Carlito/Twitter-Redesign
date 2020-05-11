# frozen_string_literal: true

require('rails_helper')

RSpec.describe(Post, type: :model) do
  before :each do
    @user = User.create!(email: 'carl@dbond', name: 'carl', password: '123456')
    @post = Post.create(content: 'testset', user_id: @user.id)
    @post2 = Post.create(
      content: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
      Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis
       dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
       pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec,
       vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum
       felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.
       Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.
       Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.
       Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.
       Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing
       Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.
       Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros
       Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget
       ugue velit cursus nunc,',
      user_id: @user.id
    )
  end

  context 'with valid details' do
    it 'should create a post' do
      expect(@post).to(be_valid)
    end
  end

  context 'with invalid details' do
    it 'should throw error for content length' do
      expect(@post2).to(be_invalid)
    end
  end
end
