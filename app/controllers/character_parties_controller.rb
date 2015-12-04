class CharacterPartiesController < ApplicationController

  def new
    @party = CharacterParty.new
  end

  def create
    character_party = CharacterParty.create(character_party_params)

    if character_party.valid?
      redirect_to Party.find(character_party_params[:party_id])
    else
      render 'new'
    end
  end

  private

  def character_party_params
    params.require(:character_party).
      permit(:character_id, :party_id)

  end



end
