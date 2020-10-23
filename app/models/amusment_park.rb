class AmusmentPark < ApplicationRecord
  has_many :rides

  def average_thrill_rating
    return 'This park has no rides' if rides.empty?

    rides.average(:thrill_rating)
  end
end
