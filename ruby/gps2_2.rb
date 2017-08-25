
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # start an empty hash for our grocery list
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here? Maybe the one below]
# output: hash that includes all items as keys and quantities as values


def create_grocery_list(items)
  split_items = items.split(' ')
  list = {}
  split_items.each {|item| list[item] = 1}
  list
end
p items = "apples oranges bananas"
p list = create_grocery_list(items)


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create a quantity value associated with an item key in the list hash
# output: updated list hash


def add_item(list, item, quantity)
  list[item] = quantity
  list
end
p add_item(list, "ice cream", 3)


# Method to remove an item from the list
# input: list hash, item name
# steps: remove item from list hash
# output: updated list hash


def delete_item(list, item)
  list.delete(item)
  list
end
p delete_item(list, "apples")


# Method to update the quantity of an item
# input: list, item name, updated quantity
# steps: set item name equal to a new quantity permanently
# output: updated list hash


def update_quantity(list, item, updated_quantity)
  list[item] = updated_quantity
  list
end
p update_quantity(list, "oranges", 5)


# Method to print a list and make it look pretty
# input: list
# steps:
  # create a title for the list
  # print each item and quanitity for all items on the list
# output: list of all items and quantities


def print_list(list)
  puts "This week's grocery list:"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end
print_list(list)