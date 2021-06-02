print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s == "R"
	user_choice = :rock
elsif s == "S"
	user_choice = :scissors
elsif s == "P"
	user_choice = :paper
else
	puts "Can't understand what you want, sorry..."
	exit
end

# comp choice

arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]



puts "User choice: #{user_choice}"
puts "Computer choice: #{computer_choice}"


matrix = [
	
	# draw

	[:rock,:rock,:draw],
	[:scissors, :scissors,:draw],
	[:paper,:paper,:draw],

	# for rock

	[:rock,:scissors,:first_win],
	[:rock,:paper,:second_win],

	# for scissors

	[:scissors,:rock,:second_win],
	[:scissors,:paper,:first_win],

	# for paper

	[:paper,:rock,:first_win],
	[:paper,:scissors,:second_win]
]



matrix.each do |item|

	# checking combination
	

	if item[0] == user_choice && item[1] == computer_choice

		
		# who wins

		if item[2] == :first_win
			puts "User wins!" 
		elsif item[2] == :second_win
			puts "Computer wins!"
		else item[2] == :draw
			puts "Draw!"
			
		end
		
		

		exit

	end

end