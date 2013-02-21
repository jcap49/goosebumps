# create a class for abstract character
class AbstractCharacter

	average_pocket = { keys: 20, cell_phone: 150, marbles: 15 }
	@average_pocket = average_pocket

	def initialize
		@ghost_pocket = Hash.new
	end

	# how would i write a method to add XYZ character's indiv pocket to the average pocket?	
	def add_pockets(pocket)
		pocket.merge(average_pocket)
	end

	def do_super_power		
	
	end

	def steal

	end

end

class GoodGuyGreg < AbstractCharacter

		greg_pocket = { ipod: 100, stopwatch: 30, lucky_charm: 10 }
		add_pockets(greg_pocket)


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

		def steal_from_greg_pocket
			greg_pocket.each do |item|
				1.times (item).inject(ghost_pocket)
			end
		end

		def steal
			steal_from_greg_pocket
		end
end

class MickeyTheStick < AbstractCharacter

		mickey_pocket = { iPod: 200, keychain: 5, ring: 60 } 
		add_pockets(mickey_pocket)

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

		def steal_from_mickey_pocket
			mickey_pocket.each do |item|
				1.times (item).inject(ghost_pocket)
			end
		end

		def steal
			steal_from_mickey_pocket
		end
end

class JoeyBaggaDonuts < AbstractCharacter
		
	joey_pocket = { zune: 150, pog_collection: 45, donuts: 10 }
	add_pockets(joey_pocket)

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

		def steal_from_joey_pocket
			joey_pocket.each do |item|
				1. times (item).inject(ghost_pocket)
			end
		end

		def steal
			steal_from_joey_pocket
		end
end


