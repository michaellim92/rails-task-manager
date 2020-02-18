class TasksController < ApplicationController
  # create crud actions
  # index, create, new, edit, show, update, destroy
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  
  def index # read all tasks
    @tasks = Task.all
  end

  def new # display a new task form
    @task = Task.new
  end
  
  def create # create a new task and store in db
    @task = Task.new(task_params)
    @task.save
  end

  def show; end

  def edit; end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end


  private

  def task_params
    params.require(:task).permit(:title, :description)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
