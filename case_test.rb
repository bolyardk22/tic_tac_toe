require_relative "dog.rb"
require_relative "cat.rb"
require_relative "area.rb"
require_relative "duck.rb"

animal = Dog.new("Scruff", "McGruff", "woof!")
puts animal.get_sound

cats = Cat.new("Fluffy")
puts cats.get_sound

finding_area = Area.new(5, 10)
puts finding_area.rectangle
puts finding_area.triangle

ducks = Duck.new("Scrooge", "McDuck")
puts ducks.get_sound