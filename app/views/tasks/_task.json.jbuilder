# frozen_string_literal: true

json.extract! task, :id, :title, :body, :project_id, :created_at, :updated_at
json.url project_tasks_path(task, format: :json)
