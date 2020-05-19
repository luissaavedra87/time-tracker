require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user1 = User.new(name: 'test', email: 'test@gmail.com', password: '123456', password_confirmation: '123456')
    @user1.avatar = fixture_file_upload('default-user.jpg')
    @user1.save
  end

  context 'tests the user model' do
    it 'create valid user' do
      expect(@user1.valid?).to eq(true)
    end

    it 'return false if enter duplicate user email' do
      @user2 = User.new(name: 'test2', email: 'test@gmail.com', password: '123456', password_confirmation: '123456')
      @user2.avatar = fixture_file_upload('default-user.jpg')
      @user2.save
      expect(@user2.valid?).to eq(false)
    end

    it 'return false if name is missing' do
      @user2 = User.new(email: 'test2@gmail.com', password: '123456', password_confirmation: '123456')
      @user2.avatar = fixture_file_upload('default-user.jpg')
      @user2.save
      expect(@user2.valid?).to eq(false)
    end

    it 'return false if avatar is missing' do
      @user2 = User.new(email: 'test2@gmail.com', password: '123456', password_confirmation: '123456')
      @user2.save
      expect(@user2.valid?).to eq(false)
    end
  end
end
