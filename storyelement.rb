require "./characters.rb"

class StoryElement

	attr_accessor :story

	def begin_story_elements

		def prompt
			print ">"
		end

		def get_player_input
			gets.chomp()
		end

		def welcome_message
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

			puts ""
			puts ""

			puts "If at any time, you get scared or feel like you might die, just type 'super power' for a cheeky rescue."

			puts ""
			puts ""

			puts "Which character would you like to choose? Greg, Mickey, or Joey?"
		end

		def haunted_house 
			
			puts "Greg, Mickey, and Joey are quite bored on a Sunday morning as most puney teenagers are."
			puts "So of course, they decide to get up to no good."
			puts "They head into the house and mess about a la Clockwork Orange style."
			puts "(I know, a bit dark right?)"
			puts "So Greg in his infinite, albeit naive, wisdom comes across an old polaroid camera."
			puts "Greg points the camera at Mickey, who's leaning against a railing on the second floor."
			puts "As the picture begins to develop, the railing gives way and Mickey falls."
			puts "Boom - his ankle is broken."

			puts ""
			puts ""

			puts "They then hear creepy footsteps coming from above, so the kiddies decide that's a good time to make an exit, so they leave the house."
			puts "But the camera stays not within the confines of that haunted house, but rather within the clutches of Greg."

			puts "" 
			puts ""

			puts "After the escape, the kiddies are gathered around their favorite watering hole, deciding on what to do next."
			puts "Mickey's all like: 'Well we have to play in that baesball game later, so maybe we should head over early and chillax.'"

			puts ""
			puts ""

			puts "But Joey's all like: 'Man - I'm tryna go and check out my dad's new swag - he copped a new car!'"
			puts "Mickey rolls his eyes and looks at Greg."

			puts ""
			puts ""

			print "#{Story.name?} originally had "
			print self.story.story_character.show_pocket

			puts ""
			puts ""

			self.story.story_character.steal

			print "But for some reason #{Story.name?}now only has "
			print self.story.story_character.show_pocket

			puts ""
			puts ""

			puts "Mysterious."

			response = Story.get_player_input_with_allowed_values("What do you feel like doing: 'baseball game' or 'check out the car'?", ['baseball game', 'check out the car', 'super power'])

			if response == "baseball game"
				return baseball_game
			elsif response == "check out the car"
				return car_wreck
			elsif response == "super power"
				self.story.story_character.do_super_power
			end

		end

		def baseball_game
			puts "So the kiddies decide to grab their shit and head off to the baseball game."
			puts "They arrive early and hang out until the game begins."
			puts "The game gets off to an exciting start with Mickey knocking in a run and making a nice play."
			puts "It is a seemingly idyllic day and all is nice in this utopian American town."
			puts "Until that bastard - good guy, I mean - Greg takes out that damn camera and snaps a photo of Mickey, who's now up to bat."
			puts "As Greg watches the photo begin to develop, the pitcher winds up and throws a fastball."
			puts "The photo begins to show Mickey's head at a weird angle..."
			puts "...Greg looks up as the fastball clocks Mickey right in his neck underneath the helmet. The crowd screams."
			puts "Mickey's taken to the hospital immediately."

			puts ""
			puts ""

			self.story.story_character.steal

			puts "And the mystery continues, as #{Story.name?} now only has "
			print self.story.story_character.show_pocket

			puts ""
			puts ""

			response = Story.get_player_input_with_allowed_values("Super power time? If so, simply type 'super power' - if not, hit [enter].", ['', 'super power'])

			if response == ""
				holy_shit_moment
			elsif response == "super power" 
				self.story.story_character.do_super_power
			end
		end

		def car_wreck
			puts "So the kiddies wonder over to check out Joey's Dad's new car."
			puts "They arrive at the house and salivate over the awesomeness that is a BMW."
			puts "Mickey gets the wise idea to takea photo of the car."
			puts "Joey's dad says he has to run an errand and gets in the car and begins to back out of the driveway."
			puts "The photo developed into a rather grisly accident with the car front in center."
			puts "And before anyone could scream a warning, Joey's dad backed out and got t-boned by a tractor trailer."

			puts ""
			puts "" 

			self.story.story_character.steal

			puts "And the mystery continues, as #{Story.name?} now only has "
			print self.story.story_character.show_pocket
			
			puts ""
			puts ""

			response = Story.get_player_input_with_allowed_values("Story continues with an [enter] unless you choose to use your [super power]", ['', 'super power'])

			if response == ""
				holy_shit_moment
			elsif response == "super power"
				self.story.story_character.do_super_power
			end
		end

		def holy_shit_moment
			puts "So after the day's calamaties, Greg & Joey sit down to discuss what the actual fuck happened."
			puts "Joey: 'HOLY SHIT DUDE!'"
			puts "Greg: 'HOLY SHIT MAN!'"
			puts "Joey thinks it has to do with the camera, and tries to convince Greg as such."
			puts "Greg is just too naive to see the writing on the walls, and proclaims that 'shit just happens sometimes dude.'"
			puts "So that leaves a decision or two to be made."

			puts ""
			puts ""

			self.story.story_character.steal

			puts "Double WTF #{Story.name?} now only has "
			print self.story.story_character.show_pocket

			puts ""
			puts ""

			response = Story.get_player_input_with_allowed_values("Press [enter] to be shown what decision you have to make or use your [super power]", ['', 'super power'])

			if response == ""
				ending
			elsif response == "super power"
				self.story.story_character.do_super_power
			end
		end

		def ending
			puts "So the two argue about what to do with the camera."
			puts "Joey musters the courage to place an ultimatum in front of Greg."
			puts "'Listen Greg, you got two choices: return the camera or give it to me.'"
			
			puts ""
			puts ""

			response = Story.get_player_input_with_allowed_values("Press [enter] to be shown what decision you have to make or use your [super power]", ['', 'super power'])
			
			if response == ""
				end_decision
			elsif response == "super power"
				self.story.story_character.do_super_power
			end
		end

		def end_decision 

			puts 

			prompt
			response = Story.get_player_input_with_allowed_values("So what do you decide: [camera] or [joey]? Remember, you've still got your super power left.", ['camera', 'joey', 'super power'])
			
			begin	
				if response == "camera"
					puts "So Greg heads back over to the haunted house to return the camera."
					puts "He's lurking around and hears the footseps again..."
					puts "...and from behind the corner, out steps a rather decrepid individual."
					puts "Greg is frozen in fear. The individual in question introduces himself as Dr Franken Freziks."
					puts "He explains that he created the cursed camera and that it had taken many a loved one from him."
					puts "'Unfortunately,' he says 'I have to keep you here so you don\'t escape and cause more harm."
					puts "Dr. Franken Freziks latches onto Greg and throws him in the basement and locks the door..."
					
					puts ""
					puts ""

					puts "The end."
				
				elsif response == "joey"
					puts "So Greg hands over the camera to Joey with a certain amount of trepidation."
					puts "And as soon as Joey has full grasp of the camera, he raises the viewfinder to his eye."
					puts "He snaps a photo of Greg, who yells. And Joey smiles, slowly waiting for the photo to come into focus..."

					puts ""
					puts ""

					puts "The end."
					
				elsif response == "super power"
					self.story.story_character.do_super_power
				end
			end until response
		end
	end
end
