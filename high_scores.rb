=begin
work with an array of scores for 'frogger'
=end
class HighScores
	#init the with an instance variable
	def initialize(ary)
		@ary = ary
	end
	#display the input list of scores
	def scores
		@ary
	end
	#display the latest score
	def latest
		@ary.last
	end
	#display the high score
	def personal_best
		@ary.max
	end
	#display the high scores in descending order
	def personal_top
		b = @ary.sort{|x,y| y<=>x}
		b.take(3)
	end
	#Create a report system for last score input.
	def report
		if @ary.max == @ary.last
			z = "Your latest score was #{@ary.max}. That's your personal best!"
			puts z
			return z
		elsif @ary.max > @ary.last
			z2 = "Your latest score was #{@ary.last}. That's #{@ary.max - @ary.last} short of your personal best!"
			puts z2
			return z2
		end
	end
end