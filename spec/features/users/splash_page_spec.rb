require 'rails_helper'

RSpec.describe 'My Budget app', type: :feature do
  describe 'Splash screen page' do
    before :each do
      visit unauthenticated_root_path
    end

    it 'Should have the app name myBudget' do
      expect(page).to have_content 'myBudget'
    end

    it 'Should have the sign in/up buttons' do
      button = page.has_selector?('a', count: 2)
      expect(button).to be true
    end

    it 'Should have the sign in button' do
      expect(page).to have_content 'Sign Up'
    end

    it 'Should have the sign up button' do
      expect(page).to have_content 'Log In'
    end

    it 'Sign up button should redirect to registration page' do
      click_link 'Sign Up'
      expect(page).to have_current_path new_user_registration_path
    end

    it 'Sign in button should redirect to sign in page' do
      click_link 'Log In'
      expect(page).to have_current_path user_session_path
    end
  end
end
