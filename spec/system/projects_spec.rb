require 'rails_helper'

RSpec.describe 'Application' do
  let(:user) { FactoryBot.create(:user) }

  it 'allows to create projects' do
    visit '/'
    fill_in :user_email, with: user.email
    fill_in :user_password, with: user.password
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully.')

    click_link 'New Project'
    fill_in :project_name, with: 'Homey'
    fill_in :project_description, with: 'Lightning-fast property transactions'
    select 'Completed'
    click_button 'Create Project'
    expect(page).to have_content('Project created with success')

    created_project = Project.last
    expect(page).to have_content(created_project.name)
    expect(created_project).to have_attributes(name: 'Homey', description: 'Lightning-fast property transactions', status: 'completed', user:, slug: 'homey')
  end
end
