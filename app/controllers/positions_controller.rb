class PositionsController < ApplicationController
  def index
    @positions = Position.all
  end

  def show
    @position = Position.find(params[:id])
  end

  def new
    @position = Position.new
  end

  def edit
    @position = Position.find(params[:id])
  end

  def create
    @position = Position.new(position_params)

    if @position.save
      flash[:notice] = "Position skapades framgångsrikt!"
      redirect_to positions_path
    else
      render :new
    end
  end

  def update
    @position = Position.find(params[:id])

    if @position.update(position_params)
      flash[:notice] = "Position uppdatering lyckades!"
      redirect_to positions_path
    else
      render :edit
    end
  end

  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    flash[:notice] = "Position raderingen lyckades!"
    redirect_to positions_path
  end

  private

  def position_params
    params.require(:position).permit(:name, :coefficient)
  end
end
