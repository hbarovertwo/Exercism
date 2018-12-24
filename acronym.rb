=begin
Mason Christensen
third exercise of first night
Ruby is pretty cool!
=end
class Acronym
	def self.abbreviate(word = 'w')
		ary = []
		a = word.split
		a.each do |i|
			b = i.split("-")
			for m in b
				c = m.chars
				d = c[0].upcase
				ary.push(d)
			end
		end
		puts ary.join
		return ary.join
	end
end

# simple test covering all use cases in test file
Acronym.abbreviate("Portable-Dog - what")