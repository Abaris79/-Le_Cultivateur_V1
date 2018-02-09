class Salle < ApplicationRecord
  belongs_to :user
  has_many :gigs
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def next
    Salle.where("id > ?", id).limit(1).first
  end

  def prev
    Salle.where("id < ?", id).limit(1).first
  end
  # def previous_salle
  #   self.class.first(:conditions => ["name < ?", :name], :order => "name desc")
  # end

  # def next_salle
  #   self.class.first(:conditions => ["name > ?", :name], :order => "name asc")
  # end
end
