class SallesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]
  before_action :set_salle, only: [:show, :edit, :update, :destroy]

  def index
    @salles = Salle.all
  end
  def show
  end
  def new
    @salle = Salle.new
  end
  def create
    @salle = Salle.new(salle_params)
    @salle.user = current_user
    if @salle.save
      redirect_to salles_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    @salle.update(salle_params)
    redirect_to salle_path
  end
  def destroy
    @salle.destroy
    redirect_to salles_path
  end

  private

  def set_salle
    @salle = Salle.find(params[:id])
  end
  def salle_params
    params.require(:salle).permit(:name, :acoustic, :stage_span, :city, :jauge)
  end
end
