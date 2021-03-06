require "./characters.rb"
require "./storyelement.rb"

class Array
  def to_sentence(options = {})
    
      default_words_connector     = ", "
      default_two_words_connector = " and "
      default_last_word_connector = ", and "
   
    case length
      when 0
        ""
      when 1
        self[0].to_s.dup
      when 2
        "#{self[0]}#{default_two_words_connector}#{self[1]}"
      else
        "#{self[0...-1].join(default_words_connector)}#{default_last_word_connector}#{self[-1]}."
    end
  end
end


# create a class for the story
class Story
	attr_accessor :story_character

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
		@storyelement.story = self
		@storyelement.begin_story_elements
		print @storyelement.welcome_message

		begin 
			prompt
			@@name = get_player_input
		
			if @@name.capitalize == "Greg"
				self.story_character = GoodGuyGreg.new
				
				puts "#{@@name.capitalize} it is."

				puts ""
				puts "" 

				puts "So you're bored. Would you like to go do some exploring?"

				begin 

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
				end while response

			elsif @@name.capitalize == "Mickey"

				self.story_character = MickeyTheStick.new

				puts "#{@@name.capitalize} it is."
				return @storyelement.haunted_house
				
			elsif @@name.capitalize == "Joey"

				puts "#{@@name.capitalize} it is."

				self.story_character = JoeyBaggaDonuts.new

				return @storyelement.haunted_house

			elsif @@name == "super power"
				raise ArgumentError.new('This function is not supposed to be used here! Select a @@name!')
			else 
				puts "Please respond with either Greg, Mickey, or Joey."
			end
		end while @@name


	end

	class << self
		def get_player_input_with_allowed_values(prompt_text, allowed_values)
			puts prompt_text
			
			begin
				putc ">"
				input = gets.chomp.downcase
				puts "We were expecting #{allowed_values.join(' or ')}" unless allowed_values.include?(input)
			end until allowed_values.include?(input)

			return input
		end
	end

	class << self
		def name?
			print "#{@@name.capitalize}"
		end
	end


end

# create story loop
begin 
	story = Story.new
	story.begin!
end while story.play_again?





