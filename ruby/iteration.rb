def adder
  number1 = 5
  number2 = 2
  puts "Forget how to add?"
  yield(number1, number2)
end

adder {|number1, number2| puts "Here's a little help: #{number1} + #{number2}"}

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

############

numbers = [1, 2, 3, 4]

pairs = {
"a" => 1,
"b" => 22,
"c" => 3,
"d" => 9
}

# 1:
#Delete any numbers that are less than 3

p numbers
numbers.delete_if{|digit| digit < 3}
p numbers


#Delete any numbers greater than or equal to 2
p pairs
pairs.delete_if{|letter, number| number >= 2}
p pairs

#2:
numbers = [1, 2, 3, 4]

pairs = {
"a" => 1,
"b" => 22,
"c" => 3,
"d" => 9
}

#Keep any numbers less than or equal to 2
p numbers
numbers.keep_if{|digit| digit <= 2}
p numbers

##Keep any numbers greater than "b"
p pairs
pairs.keep_if{|letter, number| letter > "b"}
p pairs

# 3.
numbers = [1, 2, 3, 4]

pairs = {
"a" => 1,
"b" => 22,
"c" => 3,
"d" => 9
}

new_numbers = []

p numbers
p new_numbers
new_numbers = numbers.drop_while {|digit| digit < 3}
p numbers
p new_numbers

new_pairs = {}

p pairs
p new_pairs
new_pairs = pairs.reject {|letter, digit| letter > "b"}
p pairs
p new_pairs