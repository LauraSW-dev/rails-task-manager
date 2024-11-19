class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def edit

  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params)
    @task.update(task_params)
  end

  def destroy

  end

  private

  def task_params
    params.require(:task).permit(:title, :completed, :details)
  end
end
