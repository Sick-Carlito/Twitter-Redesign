# require 'rails_helper'

# feature 'User login the app' do
#   let(:user) { User.create(name: 'carl', email:'carl@carl', password: '123456') }

#   scenario 'the user posts in the home page' do
#     visit new_user_session_path

#     fill_in 'email', with: user.email
#     click_button 'login'

#     visit home_path

#     fill_in 'content', with: 'post'
#     click_button 'submit'

#     expect(page).to have_text user.name
#   end

  # scenario 'following users are shown in home page' do
  #   visit login_path

  #   fill_in 'name', with: user.name
  #   click_button 'login'

  #   visit home_path

  #   expect(page).to have_text user.followeds.all.count
  # end

  # scenario 'followers are shown in home page' do
  #   visit login_path

  #   fill_in 'username', with: user.username
  #   click_button 'login'

  #   visit home_path

  #   expect(page).to have_text user.followers.all.count
  # end
# end