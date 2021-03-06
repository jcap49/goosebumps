# create a class for abstract character
class AbstractCharacter

	@@average_pocket = { dimes: 20, pennies: 150, marbles: 15 }

	attr_accessor :pocket

	def initialize
		@ghost_pocket = Hash.new
		@pocket = @@average_pocket
	end

	def do_super_power		
	end

	# ghost needs to identify hash of character's pocket contents
	# ghost needs to decrease quantity of each item in pocket to zero.
	# this happens once per turn

	def steal
		# Get the first thing in the character's pocket that has a non-zero quantity
		_thing = _qty = nil
		@pocket.each do |thing,qty|
			if qty > 0
				_thing = thing
				_qty = qty

				# Zero out the qty.
				@pocket[thing] = 0

				break
			end
		end

		# TODO for you - handle _thing being nil
		return if _thing.nil?

		# Move that qty. to the ghost pocket
		if @ghost_pocket.has_key?(_thing)
			@ghost_pocket[_thing] += _qty
		else
			@ghost_pocket[_thing] = _qty
		end
	end

	def add_to_pocket(hash_of_pocket_contents)
		hash_of_pocket_contents.each do |thing,qty|
			if @pocket.has_key?(thing)
				@pocket[thing] += qty
			else
				@pocket[thing] = qty
			end
		end
	end

	def show_pocket
		@pocket.to_a.collect {|arr| "#{arr[1]} #{arr[0]}" }.to_sentence
	end
end

class GoodGuyGreg < AbstractCharacter

		@@greg_pocket = { nickels: 100, "half dollars" => 30, "lucky charms" => 10, marbles: 5 }

		def initialize
			super
			add_to_pocket(@@greg_pocket)
		end

		def do_good
			puts "Good Guy Greg was born with a rare inflection - the ability to do only good."
			puts "Most times, he leveraged this power to save cats from trees, old women from street thugs and "
			puts "kindergarteners from bullies. But today, he understands the true intention for this power."
			puts "And so he squints his eyes, crosses his toes, flosses his teeth, and says the magic words."
			puts "Life returns to normal."
			puts "The End."
			Process.exit(1)
		end

		def do_super_power
			do_good
		end
end

class MickeyTheStick < AbstractCharacter

	@@mickey_pocket = { "tootsie rolls" => 200, keychains: 5, rings: 60 } 
		
		def initialize
			super
			add_to_pocket(@@mickey_pocket)
		end

		def swing_bat
			puts "Micky The Stick steps up to the proverbial plate and musters up some courage."
			puts "His face is wrinkled with despair and angst far beyond his years."
			puts "But he somehow manages to maintain the resolve necessary to do what needs to be done."
			puts "He winds up as danger rears its angry hand to pitch the ball of death."
			puts "...and he smacks it out of the park - life returns to normal."
			puts "The End."
			Process.exit(1)
		end

		def do_super_power
			swing_bat
		end
end

class JoeyBaggaDonuts < AbstractCharacter
		
	@@joey_pocket = { widgets: 150, pogs: 45, donuts: 10 }
		
		def initialize
			super
			add_to_pocket(@@joey_pocket)
		end

		def eat_donuts
			puts "Joey Bagga Donuts is only good at one thing: eating donuts."
			puts "So he does what he does best, and takes a donut from the bag."
			puts "He closes his eyes, eats said donut, and wishes for things to change."
			puts "And poof - life returns to normal."
			puts "The End."
			Process.exit(1)
		end

		def do_super_power
			eat_donuts
		end
end



