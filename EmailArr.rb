s=Array.new
s.push("adhityasuresh59@gmail.com")
s.push("122003013@sastra.edu")
s.push("dfsdvdv@sastra.co.in")
begin
	puts("\n\t\t\t----Main Menu----\n\t\t1. Add E-MaiL\n\t\t2. Display\n\t\t3. Display Edu\n\t\t4. Search\n\t\t5. Delete\n\t\t6. Display Domains\n\t\t7. Count Emails in  a particular Domain\n\t\t8. Exit\n\tEnter your Choice: ")
	n=gets.chomp.to_i
	case n
		when 1 
			puts("\n\tEnter the E-Mail: ")
			b=gets.chomp
			if b.include?("@") && b.include?(".")
				if b.index(".")>b.index("@")
					s.push(b)
					puts "\n\tE-Mail added Successfully!!"
				end			
			else
				puts "\n\tWrong E-Mail\n"
			end
		when 2 
			puts "\n\tAll E-Mails are: "
			for i in s do
				puts("\t#{i}")
			end			
		when 3 
			puts "\n\tAll E-Mails in domain \"edu\": "
			for i in s do
				if i[i.size-4,i.size-1]==".edu"	#if i.include?(".edu")
					puts("\t#{i}")	
				end
			end
		when 4 
			puts("\n\tEnter the E-Mail: ")
			b=gets.chomp
				if s.include?(b)
					puts("\n\tEmail is present in index #{s.index(b)}")
				else
					puts("\n\tEmail is not present")
				end
		when 5 
			puts("\n\tEnter the E-Mail: ")
			b=gets.chomp
			s.delete(b)
		when 6 
			puts "\n\tAll the Domains are: "
			for i in 0...s.size do
				flag=0
				for j in 0...i do
					if s[i][s[i].index("."),s[i].size-1]==s[j][s[j].index("."),s[j].size-1]
						flag=1
						break
					end
				end
				if flag==0
					puts("\t#{s[i][s[i].index("."),s[i].size-1]}")
				end
			end
		when 7
			puts("\n\tEnter the Domain: ")
			b=gets.chomp
			count=0
			for i in s do
				if i.include?(b)	#if i.include?(".edu")
					count=count+1
				end
			end
			puts("\n\tCount of E-Mails in given Domain: #{count}")
		when 8
		else	puts("\n\tInvalid Choice.....")
	end	
end while n!=8
