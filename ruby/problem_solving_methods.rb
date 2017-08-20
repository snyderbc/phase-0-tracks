arr = [42, 89, 23, 1]


def search_array (array, integer)
    times = 0
      array.each do |number|
        if number == integer
            match_location = times
            p match_location
        else
            match_location = nil
        end
      times += 1
      end
end

p search_array(arr, 1)

#Look to see if a provided integer is in a provided array
#For each number in the array, check to see if it is equal to the integer
#If it is equal, return its location in the array
#If it is not, return nil
#If it is, return the index of the integer
#If it is not, return nil