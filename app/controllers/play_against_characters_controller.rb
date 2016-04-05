class PlayAgainstCharactersController < ApplicationController
  before_action :set_play_against_character, only: [:show, :update, :destroy]

  def index
    @play_against_characters = PlayAgainstCharacter.all

    render json: @play_against_characters
  end

  def show
    render json: @play_against_character
  end

  def create
    @play_against_character = PlayAgainstCharacter.new(play_against_character_params)

    if @play_against_character.save
      render json: @play_against_character, status: :created, location: @play_against_character
    else
      render json: @play_against_character.errors, status: :unprocessable_entity
    end
  end

  def update
    @play_against_character = PlayAgainstCharacter.find(params[:id])

    if @play_against_character.update(play_against_character_params)
      head :no_content
    else
      render json: @play_against_character.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @play_against_character.destroy

    head :no_content
  end

  private

    def set_play_against_character
      @play_against_character = PlayAgainstCharacter.find(params[:id])
    end

    def play_against_character_params
      params.require(:play_against_character).permit(:player_id, :character_id)
    end
end
