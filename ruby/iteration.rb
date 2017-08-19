def say_goodbye
  number1 = 5
  number2 = 2
  puts "Forget how to add?"
  yield(number1, number2)
end

say_goodbye {|number1, number2| puts "Here's a little help: #{number1} + #{number2}"}