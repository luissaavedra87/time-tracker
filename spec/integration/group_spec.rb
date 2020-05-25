require 'rails_helper'

RSpec.describe 'clock/trasaction views', type: :feature do
  before(:each) do
    @user1 = User.new(name: 'test', email: 'test@gmail.com', password: '123456', password_confirmation: '123456')
    @user1.avatar = fixture_file_upload('default-user.jpg')
    @user1.save
    @group = Group.new(name: 'test group', user_id: 1)
    @group.icon = fixture_file_upload('default-group.jpg')
    @group.save
    visit new_user_session_path
    fill_in 'Email', with: 'test@gmail.com'
    fill_in 'Password', with: '123456'
    click_on 'LOG IN'
  end

  scenario 'go to group index' do
    click_on 'Groups'
    expect(page).to have_content('Groups')
  end

  scenario 'create a new group/project' do
    count = Group.all.count
    click_on 'Groups'
    click_on 'Add Group'
    fill_in 'Name', with: 'test group 2'
    attach_file 'Icon', Rails.root + 'spec/fixtures/default-group.jpg'
    click_on 'New/Edit'
    expect(page).to have_content('Groups')
    expect(Group.all.count).not_to eq(0)
    expect(Group.all.count).to eq(count + 1)
  end

  scenario 'destroy a group/project' do
    click_on 'Groups'
    expect(page).to have_content('test group')
    click_on 'Destroy'
    expect(page).not_to have_content('test group')
  end
end
