class PlayersController < OpenReadController
  before_action :set_player, only: [:show, :update, :destroy]

  def index
    @players = Player.all
    render json: @players
  end

  def show
    render json: @player
  end

  def create
    if current_user
      @player = Player.new(player_params)
      selected_character = Character.find(params[:selected_character])
      selected_opponent = Character.find(params[:selected_opponent])

      @player.characters << selected_character
      @player.opponents << selected_opponent

      if @player.save
        render json: @player, status: :created, location: @player
      else
        render json: @player.errors, status: :unprocessable_entity
      end
    else
      head :bad_request
    end
  end

  def update
    @player = Player.find(params[:id])

    if @player.update(player_params)
      head :no_content
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy

    head :no_content
  end

  private

    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.require(:player).permit(:name, :rank)
    end
end
