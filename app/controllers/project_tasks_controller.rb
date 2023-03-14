# frozen_string_literal: true

class ProjectTasksController < ApplicationController
  before_action :set_project
  before_action :set_project_task, only: %i[show edit update destroy]

  # GET /project_tasks or /project_tasks.json
  def index
    @project_tasks = @project.project_tasks
  end

  # GET /project_tasks/1 or /project_tasks/1.json
  def show; end

  # GET /project_tasks/new
  def new
    @project_task = @project.project_tasks.new
  end

  # GET /project_tasks/1/edit
  def edit; end

  # POST /project_tasks or /project_tasks.json
  def create
    @project_task = @project.project_tasks.new(project_task_params)
    respond_to do |format|
      if @project_task.save
        format.html do
          redirect_to project_project_tasks_path(id: @project_task.id), notice: 'Project task was successfully created.'
        end
        format.json { render :show, status: :created, location: @project_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_tasks/1 or /project_tasks/1.json
  def update
    respond_to do |format|
      if @project_task.update(project_task_params)
        format.html do
          redirect_to project_project_task_url(@project_task), notice: 'Project task was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @project_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_tasks/1 or /project_tasks/1.json
  def destroy
    @project_task.destroy

    respond_to do |format|
      format.html { redirect_to project_project_tasks_url, notice: 'Project task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_project_task
      @project_task = @project.project_tasks.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_task_params
      params.require(:project_task).permit(:title, :body)
    end
end
