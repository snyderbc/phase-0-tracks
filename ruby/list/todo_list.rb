#Define a TodoList class
#Add each of four instance methods defined in spec sheet
# One by one, confirm that the tests are turning from red to green as each method is completed



class TodoList

attr_accessor :get_items

#stores the list items given on initialization
def initialize(item_array)
  @get_items = item_array
end

#"adds an item to the list"
def add_item(item_to_add)
  @get_items << item_to_add
end


end
