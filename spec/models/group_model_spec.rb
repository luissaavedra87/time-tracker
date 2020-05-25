require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user1 = User.new(name: 'test', email: 'test@gmail.com', password: '123456', password_confirmation: '123456')
    @user1.avatar = fixture_file_upload('default-user.jpg')
    @user1.save
    @group = Group.new(name: 'test group', user_id: 1)
    @group.icon = fixture_file_upload('default-group.jpg')
    @group.save
  end

  context 'tests the group model' do
    it 'create valid group' do
      expect(@group.valid?).to eq(true)
    end

    it 'return false if enter duplicate group name' do
      @group2 = Group.new(name: 'test group', user_id: 1)
      @group2.icon = fixture_file_upload('default-group.jpg')
      @group2.save
      expect(@group2.valid?).to eq(false)
    end

    it 'validates missing group name' do
      @group3 = Group.new(user_id: 1)
      @group3.icon = fixture_file_upload('default-group.jpg')
      @group3.save
      expect(@group3.valid?).to eq(false)
    end

    it 'validates missing group icon' do
      @group3 = Group.new(user_id: 1)
      @group3.save
      expect(@group3.valid?).not_to eq(true)
    end
  end
end
