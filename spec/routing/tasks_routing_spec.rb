# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TasksController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/projects/1/tasks').to route_to(controller: 'tasks', action: 'index',
                                                   project_id: '1')
    end

    it 'routes to #new' do
      expect(get: '/projects/1/tasks/new').to route_to(controller: 'tasks', action: 'new',
                                                       project_id: '1')
    end

    it 'routes to #show' do
      expect(get: '/projects/1/tasks/1').to route_to(controller: 'tasks', action: 'show',
                                                     project_id: '1', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/projects/1/tasks/1/edit').to route_to(controller: 'tasks', action: 'edit',
                                                          project_id: '1', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/projects/1/tasks').to route_to(controller: 'tasks', action: 'create',
                                                    project_id: '1')
    end

    it 'routes to #update via PUT' do
      expect(put: '/projects/1/tasks/1').to route_to(controller: 'tasks', action: 'update',
                                                     project_id: '1', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/projects/1/tasks/1').to route_to(controller: 'tasks', action: 'update',
                                                       project_id: '1', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/projects/1/tasks/1').to route_to(controller: 'tasks', action: 'destroy',
                                                        project_id: '1', id: '1')
    end
  end
end
