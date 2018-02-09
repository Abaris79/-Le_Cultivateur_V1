class Salle < ApplicationRecord
  belongs_to :user
  has_many :gigs
end
