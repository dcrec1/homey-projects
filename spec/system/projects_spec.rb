require 'rails_helper'

RSpec.describe 'Application' do
  let(:user) { FactoryBot.create(:user) }
  let!(:project) { FactoryBot.create(:project, user:) }

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

  it 'allows to update projects' do
    visit '/'
    fill_in :user_email, with: user.email
    fill_in :user_password, with: user.password
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully.')

    click_link project.name
    click_link 'Edit'
    fill_in :project_name, with: 'Homey'
    fill_in :project_description, with: 'Lightning-fast property transactions'
    select 'Completed'
    click_button 'Update Project'
    expect(page).to have_content('Project updated with success')
    expect(project.reload).to have_attributes(name: 'Homey', description: 'Lightning-fast property transactions', status: 'completed', user:, slug: 'rails')
    expect(project.versions.last).to have_attributes(whodunnit: user.id.to_s, user:)
  end
end
