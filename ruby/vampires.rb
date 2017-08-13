puts "What is your name?"
name = gets.chomp

puts "How old are you?"
reported_age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
health_insurance = gets.chomp

vampire = "Results inconclusive."

  if reported_age == (2017 - birth_year || 2016 - birth_year) && (garlic == "y" || health_insurance == "y")
    vampire = "Probably not a vampire."
  end

 if reported_age != (2017 - birth_year || 2016 - birth_year) && garlic == "n" && health_insurance == "n"
    vampire = "Almost certainly a vampire."
  end


p vampire