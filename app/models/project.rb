class Project < ApplicationRecord
  belongs_to :user
  has_many :oeuvres
  has_many :gigs
end
