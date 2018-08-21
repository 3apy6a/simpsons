# comment for rubocop
class Character
  attr_reader :name, :location, :latitude, :longitude

  def initialize(attributes = {})
    @name = attributes[:name] || character_new[:name]
    @location = attributes[:location] || character_new[:location]
    @latitude = attributes[:latitude] || character_new[:latitude]
    @longitude = attributes[:longitude] || character_new[:longitude]
  end

  private

  def character_new
    @character_new ||= character_constructor
  end

  def character_constructor
    {
      name: Faker::Simpsons.character,
      location: Faker::Simpsons.location,
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude
    }
  end
end
