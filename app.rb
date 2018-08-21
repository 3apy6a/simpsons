require './initializer'
person1 = Character.new
person2 = Character.new
distance = DistanceCalculator.distance(person1, person2)
p "#{distance} #{Answer.answer(person1, person2)}"
