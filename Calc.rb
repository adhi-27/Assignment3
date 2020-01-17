class Calculator
	def add(a,b)
		return a+b
	end
	def sub(a,b)
		return a-b
	end
	def mul(a,b)
		return a*b
	end
	def div(a,b)
		return a/b
	end
	def mod(a,b)
		return a%b
	end
end

begin
	c=Calculator.new
	puts("\n\t\t\t----Main Menu----\n\t\t1. Add\n\t\t2. Subtract\n\t\t3. Multiply\n\t\t4. Divide\n\t\t5. Remainder\n\tEnter your Choice: ")
	n=gets.chomp.to_i
	puts("\tEnter the Two Values then ")
	a=gets.chomp.to_i 
	b=gets.chomp.to_i
	case n
		when 1 then puts("\n\tAnswer: #{c.add(a,b)}")
		when 2 then puts("\n\tAnswer: #{c.sub(a,b)}")
		when 3 then puts("\n\tAnswer: #{c.mul(a,b)}")
		when 4 then puts("\n\tAnswer: #{c.div(a,b)}")
		when 5 then puts("\n\tAnswer: #{c.mod(a,b)}")
		else   puts("\n\tInvalid Input") 
	end
end
