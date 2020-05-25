require 'rails_helper'

RSpec.describe Clock, type: :routing do
  describe 'routing' do
    it 'should get clocks index' do
      expect(get: '/clocks').to route_to('clocks#index')
    end

    it 'should get clocks new' do
      expect(get: '/clocks/new').to route_to('clocks#new')
    end

    it 'should get clocks show' do
      expect(get: '/clocks/1').to route_to('clocks#show', id: '1')
    end

    it 'should get clocks edit' do
      expect(get: '/clocks/1/edit').to route_to('clocks#edit', id: '1')
    end

    it 'should get clocks update' do
      expect(put: '/clocks/1').to route_to('clocks#update', id: '1')
    end

    it 'should get clocks destroy' do
      expect(delete: '/clocks/1').to route_to('clocks#destroy', id: '1')
    end
  end
end
