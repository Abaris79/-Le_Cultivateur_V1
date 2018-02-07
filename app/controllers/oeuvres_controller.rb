class OeuvresController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :create, :new]
  before_action :set_oeuvre, only: [:show, :edit, :update, :destroy]

  def index
    @oeuvres = Oeuvre.all
  end
  def show
  end
  def new
    @oeuvre = @project.oeuvres.build
  end
  def create
    @oeuvre = Oeuvre.new(oeuvre_params)
    @oeuvre.project = @project
    @oeuvre.save
    if @oeuvre.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end
  def edit
  end
  def update
    @oeuvre.update(oeuvre_params)
    @oeuvre.project = @project
    redirect_to project_path(@project)
  end
  def destroy
    @oeuvre.destroy
    redirect_to project_path(@project)
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_oeuvre
    @oeuvre = Oeuvre.find(params[:id])
  end

  def oeuvre_params
    params.require(:oeuvre).permit(:name, :author, :duration, :date, :reference )
  end
end
