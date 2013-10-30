class Pet
	def initialize(name, animal)
		@name = name
		@animal = animal
		@hp = 100
		@mood = 100
		@hungry = 0
		@toilet = 0
		@size = 1
		@age = 0
		@sleep = 100
		@dirty = 0
	end

	def play
		if @hungry > 05
			puts "Your pet #{@name} is very hungry!"
		elsif @sleep <50
			puts "Your pet wanna sleep."
		elsif @mood == 100
			puts "Your pet doesn't wanna play, cuz he is happy enough =)"
		elsif @toilet > 50
			puts "Your pet wanna pee :("
		else
			@mood += rand(100) + 1
			@hungry += rand(100) + 1
			@sleep -= rand(100) + 1
			@dirty = 1
			if @mood > 100
				@mood = 100
			elsif @hungry > 100
				@hungry = 100
			elsif @sleep < 0
				@sleep = 0	
			end

			hour_passed

			puts "Your pet's mood increased, now it #{@mood}%. But he is dirty and want some food."
		end
		
		
	end

	def clean
		puts "#{name} in a bath..."
		sleep(3)
		@dirty = 0
		puts "Woohoo! I'm clean!"
	end

#TODO: fix it
	def eat
		if @hungry == 0
			puts "Your pet doesn't want eat."
		else
			puts "Om-nom-nom..."
			sleep(3)
			@hungry -= rand(100) + 1
			@toilet += rand(100) + 1
			if @toilet > 100
				@toilet = 100
			end
			if @hungry < 0
				@hungry = 0
			end
		end
		if @hungry > 50
			puts "Your pet wants more food."
		else
			puts "Yeah. Your pet is fed! (#{@hungry})"
		end
	end

#TODO: fix it
	def go_to_sleep
		if @toilet > 70
			puts "Your pet want to toilet."
		else
			puts "Your pet sleeps..."
			sleep(2)
			@sleep += rand(100) + 1
			hour_passed
			if @sleep > 100
				@sleep = 100
			end
			@toilet += rand(100) + 1
			if @toilet > 100
				@toilet = 100
			end
			if @sleep < 50
				puts "Your pet does not slept enough."
			else 
				puts "Pet slept."
			end
		end
	end 

#TODO: complete it
	def learn

	end 

	def show_all
		puts "#{@name}: "
		puts "#{@hp} hp, #{@mood} mood, #{@hungry} hungry, #{@toilet} toilet, #{@age} age, #{@sleep} sleep."
	end


#------------
	private

	@hours = 0

	def hour_passed
		if @hours.to_i < 24
			@hours = @hours.to_i + 1
			if @hours == 1
				puts "#{@hours} hour passed."
			else
				puts "#{@hours} hours passed."
			end
		else
			day_passed
		end
	end

	def day_passed
		@hours = 0
		@age += 1
		if @age == 1
			puts "#{@age} day passed."
		else
			puts "#{@age} days passed."
		end
	end

end


kote = Pet.new("Marinko", "cat")
kote.play
kote.show_all
kote.play
kote.show_all
kote.eat
kote.show_all
kote.go_to_sleep
kote.show_all


