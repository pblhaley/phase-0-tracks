# LATE-NIGHT RESTAURANT SUGGESTER

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("restaurants.db")

# create string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS restaurants(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    wait_time INT,
    phone VARCHAR(255)
  )
SQL

# create a restaurants table
db.execute(create_table_cmd)


# create add restaurants method
def add_restaurant(db, name, type, wait_time, phone)
  db.execute("INSERT INTO restaurants (name, type, wait_time, phone) VALUES (?, ?, ?, ?)", [name, type, wait_time, phone])
end

# add restaurants
add_restaurant(db, "Taco Joint", "Mexican", 45, "123-456-7890")
add_restaurant(db, "Posada Margherita", "Italian", 30, "738-248-8642")
add_restaurant(db, "Coat & Thai", "Thai", 15, "244-677-2497")
add_restaurant(db, "Nasha", "Indian", 60, "743-431-2362")


#---------------DRIVER CODE---------------

# get user input on type of food
puts "Looks like somebody is hungry, but it's already past midnight! Let's see what's still open...got it! The only places open right now are Italian, Mexican, Thai, or Indian. Which are you craving?"

user_choice = gets.chomp

# select choice pieces of data based on user input
restaurant_info = db.execute("SELECT restaurants.name FROM restaurants WHERE type=user_choice")

wait_info = db.execute("SELECT restaurants.wait_time FROM restaurants WHERE type=user_choice")

phone_info = db.execute("SELECT restaurants.phone FROM restaurants WHERE type=user_choice")

# return info about user input
puts "How about #{restaurant_info}? The wait is about #{wait_info} minutes."

puts "Would you like to order? Please answer 'yes' or 'no'."

answer = gets.chomp

if answer == "yes"
  puts "Awesome! Here's there number: #{phone_info}. Have a great midnight snack!"
else
  puts "Guess you're not that hungry afterall...sleep tight!"
end




