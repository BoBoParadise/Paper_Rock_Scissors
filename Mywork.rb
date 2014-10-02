choices_array = ["R","P","S"]
play = true
player_choice = true

def string(choice) 
	if choice == "P"
		"Paper"
  elsif choice == "R"
		"Rock"
  elsif choice == "S"
		"Scissors"
  end	
end


puts "Play Paper Rock Scissors!"

while play != "N"

	while player_choice != "P" && player_choice != "R" && player_choice != "S"
		puts "Choose one: (P/R/S)"
		player_choice = gets.chomp.upcase
	end
	computer_choice = choices_array.shuffle.sample
	puts "You picked #{string(player_choice)} and computer picked #{string(computer_choice)}."

	if player_choice == computer_choice
		puts "It's a tie."
	elsif player_choice == "P" 
		if computer_choice == "R"
				puts "Paper wraps Rock!"
				puts "You won!"
		elsif computer_choice == "S"
				puts "Scissors cut Paper!"
				puts "Computer won!"	
		end
	elsif player_choice == "R" 
		if computer_choice == "P"
				puts "Paper wraps Rock!"
				puts "Computer won!"
		elsif computer_choice == "S"
				puts "Rock breaks Scissors!"
				puts "You won!"	
		end
	elsif player_choice == "S" 
		if computer_choice == "R"
				puts "Rock breaks Scissors!"
				puts "Computer won!"
		elsif computer_choice == "P"
				puts "Scissors cut Paper!"
				puts "You won!"	
		end
	end

	play = true
  
	while play != "N" && play != "Y"
	puts "Play again? (Y/N)"
	play = gets.chomp.upcase
	end

	player_choice = true
end