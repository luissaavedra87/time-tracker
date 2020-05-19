require 'rails_helper'

RSpec.describe Clock, type: :model do
  before(:each) do
    @user1 = User.new(name: 'test', email: 'test@gmail.com', password: '123456', password_confirmation: '123456' )
    @user1.avatar = fixture_file_upload('default-user.jpg')
    @user1.save
    @group = Group.new(name: 'test group', user_id: 1)
    @group.icon = fixture_file_upload('default-group.jpg')
    @group.save

  end

  context 'tests the clock/transaction model' do
    it 'create valid clock/transaction' do
      @clock = Clock.create(name:'Project1', hour: 2, user_id: 1, group_id: 1)
      expect(@clock.valid?).to eq(true)
    end

    it 'create valid clock/transaction without a group_id' do
      @clock = Clock.create(name:'Project1', hour: 2, user_id: 1)
      expect(@clock.valid?).to eq(true)
    end

    it 'validates missing clock/transaction hours/amount' do
      @clock = Clock.create(name:'Project1', user_id: 1, group_id: 1)
      expect(@clock.valid?).to eq(false)
    end

    it 'validates missing clock/transaction name' do
      @clock = Clock.create(hour: 2, user_id: 1, group_id: 1)
      expect(@clock.valid?).to eq(false)
    end
  end

end