class PlayAsCharactersController < ApplicationController
  before_action :set_play_as_character, only: [:show, :update, :destroy]

  # GET /play_as_characters
  # GET /play_as_characters.json
  def index
    @play_as_characters = PlayAsCharacter.all

    render json: @play_as_characters
  end

  # GET /play_as_characters/1
  # GET /play_as_characters/1.json
  def show
    render json: @play_as_character
  end

  # POST /play_as_characters
  # POST /play_as_characters.json
  def create
    @play_as_character = PlayAsCharacter.new(play_as_character_params)

    if @play_as_character.save
      render json: @play_as_character, status: :created, location: @play_as_character
    else
      render json: @play_as_character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /play_as_characters/1
  # PATCH/PUT /play_as_characters/1.json
  def update
    @play_as_character = PlayAsCharacter.find(params[:id])

    if @play_as_character.update(play_as_character_params)
      head :no_content
    else
      render json: @play_as_character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /play_as_characters/1
  # DELETE /play_as_characters/1.json
  def destroy
    @play_as_character.destroy

    head :no_content
  end

  private

    def set_play_as_character
      @play_as_character = PlayAsCharacter.find(params[:id])
    end

    def play_as_character_params
      params.require(:play_as_character).permit(:player_id, :character_id)
    end
end
