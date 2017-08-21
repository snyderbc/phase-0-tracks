###Release 0: Simple Search

#Look to see if a provided integer is in a provided array
#For each number in the array, check to see if it is equal to the integer
#If it is equal, return its location in the array
#If it is not, return nil


arr = [42, 89, 23, 1]

def search_array (array, integer)
    times = 0
    match_location = ""
      array.each do |number|
        if number == integer
            match_location = times
        else
            match_location = nil
        end
      times += 1
      end
    match_location
end

p search_array(arr, 1)

###Release 1: Fibonacci Numbers


#Create an array that already has 0 and 1 stored. Then, for each number entered, add it to the previous number and store it in an array.

def fib(quantity)
  fib_array = [0, 1]
  fib_number = 0
    (quantity - 2).times {|index| fib_array << fib_array[index] + fib_array[index + 1]}
  p fib_array
end

fib(100)



######### Release 2: Sort an Array

#Take an array of integers. At each index of the array, check to see if the integer at the next index is smaller. If it the next integer is a smaller number, swap them. If not, leave the order asis. Continue to do this until the integers are ordered from lowest to highest.

def bubble_sort(array)

  n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]



# https://www.youtube.com/watch?v=x9G7_1RvyB8