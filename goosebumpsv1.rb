require "./characters.rb"
require "./storyelement.rb"

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
		@storyelement = StoryElement.new
		print @storyelement.welcome_message

		begin 
			prompt
			name = get_player_input
		
			if name.capitalize == "Greg"
				puts "Greg it is."

				puts ""
				puts "" 

				puts "So you're bored. Would you like to go do some exploring?"

				prompt
				response = get_player_input

				if response.capitalize == "Yes"
					return @storyelement.haunted_house
				elsif response.capitalize == "No"
					puts "You just dodged a major bullet. Congratulations, your life remains normal."
					Process.exit(1)
				else
					puts "Please respond with a yes or no."
				end

			elsif name.capitalize == "Mickey"
				puts "Mickey it is."
				return @storyelement.haunted_house
				
			elsif name.capitalize == "Joey"
				puts "Joey it is."
				return @storyelement.haunted_house
			else 
				puts "Please respond with either Greg, Mickey, or Joey."
			end
		end while !name

	end

	# create various story lines

	# call haunted_house story element
	
	# call baseball_game story element


	# call car_wreck story elemengt
	

	# call holy_shit_moment story element
	

	# call ending story element
	
	# play again prompt

end

# create story loop
begin 
	story = Story.new
	story.begin!
end while story.play_again?





