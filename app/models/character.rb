class Character < ActiveRecord::Base
  has_many :parties, through: :character_parties
  has_many :character_parties
end
