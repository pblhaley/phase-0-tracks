
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # start an empty hash for our grocery list
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here? Maybe the one below]
# output: hash that includes all items as keys and quantities as values

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create a quantity value associated with an item key in the list hash
# output: updated list hash

# Method to remove an item from the list
# input: list hash, item name
# steps: remove item from list hash
# output: updated list hash

# Method to update the quantity of an item
# input: list, item name, updated quantity
# steps: set item name equal to a new quantity permanently
# output: updated list hash

# Method to print a list and make it look pretty
# input: list
# steps:
  # create a title for the list
  # print each item and quanitity for all items on the list
# output: list of all items and quantities

def create_grocery_list(items)
  split_items = items.split(' ')
  list = {}
  split_items.each {|item| list[item] = 1}
  list
end

p items = "apples oranges bananas"
p list = create_grocery_list(items)
