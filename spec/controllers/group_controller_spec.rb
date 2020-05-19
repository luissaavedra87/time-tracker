require 'rails_helper'

RSpec.describe Group, type: :routing do
  describe 'routing' do
    it 'should get groups index' do
      expect(get: '/groups').to route_to('groups#index')
    end

    it 'should get groups new' do
      expect(get: '/groups/new').to route_to('groups#new')
    end

    it 'should get groups show' do
      expect(get: '/groups/1').to route_to('groups#show', id: '1')
    end

    it 'should get groups edit' do
      expect(get: '/groups/1/edit').to route_to('groups#edit', id: '1')
    end

    it 'should get groups update' do
      expect(put: '/groups/1').to route_to('groups#update', id: '1')
    end

    it 'should get groups destroy' do
      expect(delete: '/groups/1').to route_to('groups#destroy', id: '1')
    end
  end
end
