require "./character.rb"

# create a class for the story
class Story
	# define a prompt figure
	def prompt
		print ">"
	end

	# define player response
	def get_player_input
		gets.chomp()
	end

	def play_again?
		result = get_player_input
		result.downcase == "y"
	end

	# begin story 
	def begin!
		puts "[Insert creepy Goosebumps soundtrack]"
		puts "Ooooo-ahhhh-oooo"
		puts "This is the Goosebumps RPG: Say Cheese or Die."
		puts "You have an option of one of three characters:"
		
		puts ""
		puts ""
		
		puts "Good Guy Greg is unsurprisingly known as the good guy of the group."
		puts "He is generally a nice human being, is a casual badminton player, and likes yams."
		puts "His secret special power is the ability to do good."
		
		puts ""
		puts ""

		puts "Mickey The Stick, on the other hand, is a character of dubious nature."
		puts "His name is apparently an homage to some baseball player he's got a signed bat from."
		puts "But some kiddies on the block say it's in reference to the bat and something much more sinister..."
		puts "His secret special power is the ability to swing his big bad bat."

		puts "" 
		puts ""

		puts "Joey Bagga Donuts is that one kid who is just a bit off. You know that one kid."
		puts "He's generally a light-hearted chump, but adds very little value to the group."
		puts "He has this nervous habit of eating food, which most often comes in the form of donuts."
		puts "Hence the nickname of course. And his special power is unsurprisingly..."
		puts "...the ability to eat donuts which result in some soothing or healing shit."


		puts "So that said, which character are you going to lead to his doom today?"

		prompt
		get_player_input

		if get_player_input.capitalize == "Greg"
			GoodGuyGreg.new
		elsif get_player_input.capitalize == "Mickey"
			MickeyTheStick.new
		elsif get_player_input.capitalize == "Joey"
			JoeyBaggaDonuts.new
		else 
			puts "Please respond with either Greg, Mickey, or Joey."
		end
	end


	# create various story lines

	def haunted_house
		puts "Greg, Mickey, and Joey are quite bored on a Sunday morning as most puney teenagers are."
		puts "So of course, they decide to get up to no good."
		puts ""

	end

	def baseball_game

	end

	def car_wreck

	end

	def holy_shit_moment

	end

	def ending
		if action_1
			puts "ending 1"
		elsif action_2 
			puts "ending 2"
		elsif action_3
			puts "ending 3"
		else
			puts "return some proper shit man"
		end
	end








	# play again prompt






end

# create story loop
begin 
	story = Story.new
	story.begin!
end while story.play_again?





