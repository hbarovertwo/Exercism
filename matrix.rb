=begin
create a Matrix class that accepts string
represenation of matrices, and can return 
rows, columns, etc.
=end

class Matrix
	def initialize(matr,row="w",elem="w")
		@row = matr.lines.count
		@matr = matr.split.collect{|i| i.to_i}
		@elem = @matr.length
		@m = @matr.each_slice((@elem)/@row).to_a
	end
	def rows
		return @m
	end
	def columns
		z = @m.transpose
		puts z
		return z	
	end
end