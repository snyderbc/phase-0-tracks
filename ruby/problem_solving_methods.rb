###Release 0: Simple Search

#Look to see if a provided integer is in a provided array
#For each number in the array, check to see if it is equal to the integer
#If it is equal, return its location in the array
#If it is not, return nil


arr = [42, 89, 23, 1]

def search_array (array, integer)
    times = 0
      array.each do |number|
        if number == integer
          return times
        end
      times += 1
      end
    return nil
end

p search_array(arr, 13)

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

#Take an array of integers. At each index of the array, check to see if the integer at the next index is smaller. If the next integer is a smaller number, swap them. If not, leave the order as is. Continue to do this until the integers are ordered from lowest to highest.

def bubble_sort(array)

n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

arr = [9, 1, 12, 7, 89, 2]

p bubble_sort(arr)


#https://www.youtube.com/watch?v=x9G7_1RvyB8