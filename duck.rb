class Duck
	attr_accessor :first_name, :last_name, :sound

		def initialize(f_name, l_name)
			@first_name = f_name
			@last_name = l_name
			@sound = "Quack!"
		end
	
		def get_sound()
			"I am #{first_name} #{last_name} and my sound is #{sound}"
		end
end