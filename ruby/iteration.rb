def say_goodbye
  number1 = 5
  number2 = 2
  puts "Forget how to add?"
  yield(number1, number2)
end

say_goodbye {|number1, number2| puts "Here's a little help: #{number1} + #{number2}"}

############

dogs = ["dalmation", "lab", "pit bull"]

musicians = {
  "Led Zeppelin" => "Robert Plant",
  "Pink Floyd" =>"David Gilmour",
  "The Beatles" =>"George Harrison"
}

p dogs

dogs.each do |breed|
  puts "#{breed} is a type of dog!"
end

p dogs

dogs.map! do |breed|
  puts breed
  breed.upcase
end

p dogs

p musicians

musicians.each do |band, member|
  puts "#{member} was in #{band}."
end

p musicians