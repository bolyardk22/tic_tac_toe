require "minitest/autorun"
require_relative "dog.rb"
require_relative "cat.rb"
require_relative "area.rb"
require_relative "duck.rb"

class Tests_animals < Minitest::Test
	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_dog_first_name
		dog_name = Dog.new("Debbie", "Berry", "scream")
		assert_equal("Debbie", dog_name.first_name)
	end

	def test_dog_last_name
		dog_name = Dog.new("Debbie", "Berry", "scream")
		assert_equal("Berry", dog_name.last_name)
	end

	def test_dog_sound
		dog_name = Dog.new("Debbie", "Berry", "scream")
		assert_equal("scream", dog_name.sound)
	end

	def test_duck_first_name
		duck_name = Duck.new("Scrooge", "McDuck")
		assert_equal("Scrooge", duck_name.first_name)
	end

	def test_duck_last_name
		duck_name = Duck.new("Scrooge", "McDuck")
		assert_equal("McDuck", duck_name.last_name)
	end

	def test_cat_name
		cat_name = Cat.new("Al")
		assert_equal("Al", cat_name.name)
	end

	def test_area_rectangle
		dimensions = Area.new(2, 4)
		assert_equal("The area of a rectangle with a length of #{4} and a height of #{2} is #{8}", dimensions.rectangle)
	end

	def test_area_triangle
		dimensions = Area.new(2, 4)
		assert_equal("The area of a triangle with a length of #{4} and a height of #{2} is #{4}", dimensions.triangle)
	end

end