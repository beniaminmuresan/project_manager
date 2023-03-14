class AddProjectReferenceToProjectTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :project_tasks, :project, index: true
  end
end
