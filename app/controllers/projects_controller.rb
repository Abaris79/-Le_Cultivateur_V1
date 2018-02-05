class ProjectsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index, :show]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end
  def show
  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.create(project_params)
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    @project.update(project_params)
    redirect_to project_path
  end
  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
  def project_params
    params.require(:project).permit(:name, :category, :cost, :user_id, :description, :duration, :min_span_stage, :acoustic)
  end
end
