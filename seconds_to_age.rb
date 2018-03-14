# Given an age in seconds, calculate how old someone would be on:

  # Earth: orbital period 365.25 Earth days, or 31557600 seconds
  # Mercury: orbital period 0.2408467 Earth years = 
  # Venus: orbital period 0.61519726 Earth years
  # Mars: orbital period 1.8808158 Earth years
  # Jupiter: orbital period 11.862615 Earth years
  # Saturn: orbital period 29.447498 Earth years
  # Uranus: orbital period 84.016846 Earth years
  # Neptune: orbital period 164.79132 Earth years

# So if you were told someone were 1,000,000,000 seconds old, you should be able to say that they're 31.69 Earth-years old.

# seconds -> minutes -> hours -> days -> years

class SpaceAge 
  def initialize seconds
    @seconds = seconds
    @earth_days = seconds/60.0/60.0/24.0
    @earth_orbital_period = 365.25
    @earth_age = @earth_days/@earth_orbital_period
  end

  def age_on_earth
    @earth_age.round(2)
  end

  def age_on_mercury
    (@earth_age/0.2408467).round(2)
  end

  def age_on_venus
    (@earth_age/0.61519726).round(2)
  end

  def age_on_mars
    (@earth_age/1.8808158).round(2)
  end

  def age_on_jupiter
    (@earth_age/11.862615).round(2)
  end

  def age_on_saturn
    (@earth_age/29.447498).round(2)
  end

  def age_on_uranus
    (@earth_age/84.016846).round(2)
  end

  def age_on_neptune
    (@earth_age/164.79132).round(2)
  end
end

print "Age in seconds: "
age = gets.chomp.to_i

space_age = SpaceAge.new(age)
puts "Earth years: #{space_age.age_on_earth}"
puts "Mercury years: #{space_age.age_on_mercury}"
puts "Venus years: #{space_age.age_on_venus}"
puts "Mars years: #{space_age.age_on_mars}"
puts "Jupiter years: #{space_age.age_on_jupiter}"
puts "Saturn years: #{space_age.age_on_saturn}"
puts "Uranus years: #{space_age.age_on_uranus}"
puts "Neptune years: #{space_age.age_on_neptune}"
