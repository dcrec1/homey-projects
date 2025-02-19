require 'rails_helper'

RSpec.describe 'Application' do
  it 'allows to sign up' do
    visit '/'
    click_link 'Sign up'
    fill_in :user_name, with: 'Diego'
    fill_in :user_email, with: 'email@email.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')

    created_user = User.last
    expect(created_user).to have_attributes(name: 'Diego')
  end
end
