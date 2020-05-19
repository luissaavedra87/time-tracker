require 'rails_helper'

RSpec.describe 'Creating a user', type: :feature do
  before(:each) do
    @user1 = User.new(name: 'test', email: 'test@gmail.com', password: '123456', password_confirmation: '123456' )
    @user1.avatar = fixture_file_upload('default-user.jpg')
    @user1.save
  end

  scenario 'valid inputs' do
    visit new_user_registration_path
    fill_in 'Name', with: 'Test2'
    fill_in 'Email', with: 'test2@gmail.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'SIGN UP'
    visit main_path
    expect(page).to have_content('Test2')
  end

  scenario 'log in user' do
    visit new_user_session_path
    fill_in 'Email', with: 'test@gmail.com'
    fill_in 'Password', with: '123456'
    click_on 'LOG IN'
    visit main_path
    expect(page).to have_content('test')
  end

  scenario 'log out user' do
    visit new_user_session_path
    fill_in 'Email', with: 'test@gmail.com'
    fill_in 'Password', with: '123456'
    click_on 'LOG IN'
    visit main_path
    click_on 'Sign out'
    expect(page).to have_content('TIME TRACKER')
  end
end