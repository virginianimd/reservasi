class Tamu < ApplicationRecord
  belongs_to :tipepaket

  def self.search(search)
    if search
      where(["kodebooking LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
