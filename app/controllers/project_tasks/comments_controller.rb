# frozen_string_literal: true

class ProjectTasks::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @commentable = ProjectTask.find(params[:project_task_id])
    end
end
