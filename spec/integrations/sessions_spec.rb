require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
  describe 'Sessions' do
    it 'You should go to a page different from /login or /users/new' do
      get root_path
      expect(response).to have_http_status(302)
    end

    it 'should redirect you to signin when going to post index' do
      get root_path
      expect(response).to have_http_status(302)
    end

    it 'should render the signin path' do
      get new_user_session_path
      expect(response).to render_template(:new)
    end

    it 'Should signin with the right email' do
      @user = User.new
      get new_user_session_path
      post new_user_session_path, params: { session: { email: @user.email.to_s } }
      expect(response).to have_http_status(200)
    end

    it 'works' do
      @user = User.new
      get new_user_session_path
      post new_user_session_path, params: { session: { email: @user.email.to_s } }
      expect(response.body).to include(@user.email)
    end
  end
end