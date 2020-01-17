	def min(a)
		m=a[0]
		for x in a do
			if x<m
				m=x
			end 
		end
		return m
	end
	def max(a)
		m=0
		for x in a do
			if x>m
				m=x
			end 
		end
		return m
	end
	def addall(a)
		sum=0
		for x in a do
			sum+=x
		end
		return sum 
	end

a=Array.new
begin
	puts("\n\t\t\t----Main Menu----\n\t\t1. Add Value\n\t\t2. Minimum\n\t\t3. Maximum\n\t\t4. Sum\n\t\t5. Average\n\t\t6. Search\n\t\t7. Display\n\t\t8. Delete by Index\n\t\t9. Delete Value\n\t\t10. Exit\n\tEnter your Choice: ")
	n=gets.chomp.to_i
	case n
		when 1 
			puts("\n\tEnter the Value: ")
			b=gets.chomp.to_i
			a << b
			puts "\n\tValue added Successfully!!\n"
		when 2 then puts("\n\tAnswer: #{min(a)}")
		when 3 then puts("\n\tAnswer: #{max(a)}")
		when 4 then puts("\n\tAnswer: #{addall(a)}")
		when 5 then puts("\n\tAnswer: #{addall(a)/a.size}")
		when 6 
			puts("\n\tEnter the Value: ")
			b=gets.chomp.to_i
			puts("\n\tAnswer: #{a.include?(b)}")
		when 8 
			puts("\n\tEnter the Index: ")
			b=gets.chomp.to_i
			a.delete_at(b)
		when 9 
			puts("\n\tEnter the Value: ")
			b=gets.chomp.to_i
			a.delete(b)
		when 7 
			puts "\n\tAll Values are: "
			for i in a do
				puts("\t#{i}")
			end
		when 10 
		else   puts("\n\tInvalid Input") 
	end	
end while n!=10


