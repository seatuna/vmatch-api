class CharactersController < OpenReadController
  before_action :set_character, only: [:show]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Player.all
    render json: @characters
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    render json: @character
  end

  private

    def set_character
      @character = Player.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:name)
    end
end
