# comment for rubocop
module DistanceCalculator
  # find the distance between two arbitrary points
  def self.distance(person1, person2)
    Geocoder::Calculations.distance_between(
      [person1.latitude, person1.longitude],
      [person2.latitude, person2.longitude]
    )
  end
end
