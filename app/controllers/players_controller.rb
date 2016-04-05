class PlayersController < OpenReadController
  before_action :set_player, only: [:show, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
    render json: @players
  end

  # GET /players/1
  # GET /players/1.json
  def show
    render json: @player
  end

  # POST /players
  # POST /players.json
  def create

    if current_user
      @player = Player.new(player_params)
      selected_character1 = Character.find(params[:selected_character1])
      selected_opponent1 = Character.find(params[:selected_opponent1])
      selected_character2 = Character.find(params[:selected_character2])
      selected_opponent2 = Character.find(params[:selected_opponent2])
      selected_character3 = Character.find(params[:selected_character3])
      selected_opponent3 = Character.find(params[:selected_opponent3])

      @player.characters << selected_character1 << selected_character2 << selected_character3
      @player.opponents << selected_opponent1 << selected_opponent2 << selected_opponent3

      if @player.save
        render json: @player, status: :created, location: @player
      else
        render json: @player.errors, status: :unprocessable_entity
      end

    else
      head :bad_request
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    @player = Player.find(params[:id])

    if @player.update(player_params)
      head :no_content
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
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
