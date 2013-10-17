class Ball
	def shake
		puts "Thinking..."
		answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes - definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Signs point to yes", "Yes", "Reply hazy, try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it","My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]
		answer_id = rand(20)
		sleep(2)
		puts answers[answer_id] + "."
	end
end

my_ball = Ball.new
my_ball.shake