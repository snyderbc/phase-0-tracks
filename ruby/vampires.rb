puts "How many employees will be processed?"
employees = gets.chomp.to_i

until employees == 0

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp

  puts "What year were you born?"
  birth_year = gets.chomp

  puts "Our company cafeteria serves garlic bread.  Should we order some for you? (y/n)"
  garlic = gets.chomp

  puts "Would you like to enroll in the company’s   health insurance? (y/n)"
  insurance = gets.chomp


  puts "Please list any allergies, one at a time. Type 'done' when finished."
  allergies = gets.chomp
  until allergies == "done" || allergies == "sunshine"
    if allergies == "sunshine"
      vampire = "Probably a vampire."
      end
  end

  if age.to_i == (2017 - birth_year.to_i || 2016 -  birth_year.to_i) && (garlic == "y" || insurance ==  "y")
    vampire = "Probably not a vampire."
  end

  if age.to_i != (2017 - birth_year.to_i || 2016 -  birth_year.to_i) && (garlic == "n" || insurance ==  "n")
    vampire = "Probably a vampire."
  end

  if age.to_i != (2017 - birth_year.to_i || 2016 -  birth_year.to_i) && garlic == "n" && insurance ==  "n"
    vampire = "Almost certainly a vampire."
  end

  if name == "Drake Cula" || name == "Tu Fang"
    vampire = "Definitely a vampire."
  end

if vampire != "Probably not a vampire." && vampire != "Probably a vampire." && vampire != "Almost certainly a vampire." && vampire != "Definitely a vampire."
  vampire = "Results inconclusive."
end

  p vampire

  employees = employees - 1
end
