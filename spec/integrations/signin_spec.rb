# frozen_string_literal: true

require 'rails_helper'

feature 'User login the app' do
  let(:user) { User.create(name: 'carl', email: 'carl@carl', password: '123456') }

  scenario 'user login succesfully' do
    visit new_user_session_path

    @user = User.new

    fill_in 'user_email', with: user.email
    click_button 'Log in'

    expect(page).to have_text @user.name
  end

  scenario 'user cant login without valid information' do
    visit new_user_session_path

    fill_in 'user_email', with: 'email'
    click_button 'Log in'

    expect(page).to have_text 'Invalid Email or password.'
  end

  scenario 'user cant login with no data' do
    visit new_user_session_path

    fill_in 'user_email', with: ''
    click_button 'Log in'

    expect(page).to have_text 'Invalid Email or password.'
  end
end
