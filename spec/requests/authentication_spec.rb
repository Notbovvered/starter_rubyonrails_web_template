require 'rails_helper'

RSpec.describe 'User Authentication', type: :request do
  let(:user) { create(:user) }

  describe 'Sign In' do
    it 'allows a user to sign in with valid credentials' do
      post user_session_path, params: {
        user: {
          email: user.email,
          password: user.password
        }
      }
      expect(response).to redirect_to("home#signedinIndex")
      follow_redirect!
      expect(response.body).to include('Signed in successfully')
    end

    it 'does not allow sign in with invalid credentials' do
      post user_session_path, params: {
        user: {
          email: user.email,
          password: 'wrongpassword'
        }
      }
      expect(response.body).to include('Invalid Email or password')
    end
  end

  describe 'Sign Out' do
    it 'allows a signed-in user to sign out' do
      sign_in user
      delete destroy_user_session_path
      expect(response).to redirect_to("home#signedinIndex")
      follow_redirect!
      expect(response.body).to include('Signed out successfully')
    end
  end
end
