class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.create(player_params)
    if player.valid?
      redirect_to player_path(player)
    else
      flash[:errors] = player.errors.full_messages
      redirect_to new_player_path
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    player = Player.find(params[:id])
    player.update(player_params)
    redirect_to player_path(player)
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
  end

  def dana
    render 'dana'
  end

  private

  def player_params
    params.require(:player).permit(:name, :number, :dedication, :decent, :team_id)
  end

end
