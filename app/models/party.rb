class Party < ActiveRecord::Base
  has_many :characters, through: :character_parties
  has_many :character_parties
end
