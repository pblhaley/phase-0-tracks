
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
#p items = "apples oranges bananas"
#p list = create_grocery_list(items)


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create a quantity value associated with an item key in the list hash
# output: updated list hash


def add_item(list, item, quantity)
  list[item] = quantity
  list
end
#p add_item(list, "ice cream", 3)


# Method to remove an item from the list
# input: list hash, item name
# steps: remove item from list hash
# output: updated list hash


def delete_item(list, item)
  list.delete(item)
  list
end
#p delete_item(list, "apples")


# Method to update the quantity of an item
# input: list, item name, updated quantity
# steps: set item name equal to a new quantity permanently
# output: updated list hash


def update_quantity(list, item, updated_quantity)
  list[item] = updated_quantity
  list
end
#p update_quantity(list, "oranges", 5)


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
#print_list(list)


items = "avocados wine rice bread"
list = create_grocery_list(items)
add_item(list, "lemonade", 2)
add_item(list, "tomato", 3)
add_item(list, "onion", 1)
add_item(list, "ice cream", 4)
delete_item(list, "lemonade")
update_quantity(list, "ice cream", 1)
print_list(list)


########## REFLECT ##########
# What did you learn about pseudocode from working on this challenge?
# This is maybe the first time that pseudocoding really played a huge role in my coding. Before now it seemed kinda redundant, but during this challenge being able to break up my methods and how I was going to tackle them through my psuedocode allowed me to work on one method at a time.

# What are the tradeoffs of using arrays and hashes for this challenge?
# I think the hash works better for this challenge because we had a couple pieces of info (item and quantity) that needed to be organized together. Hashes and arrays are both super helpful in organizing data.

# What does a method return?
# A method returns an object that is determined by the last line of the method.

# What kind of things can you pass into methods as arguments?
# You can pass strings, integers, variables, and other methods.

# How can you pass information between methods?
# You can use a method to call another method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The concept of psuedocoding really solidified for me in this challenge. Also, I got more comfortable with using hashes because for most of my previous work I have been using arrays. I still need to do some practicing with hashes and with iteration, but I feel like I'm getting there!