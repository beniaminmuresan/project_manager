# frozen_string_literal: true

json.extract! project_task, :id, :title, :body, :project_id, :created_at, :updated_at
json.url project_project_tasks_path(project_task, format: :json)
