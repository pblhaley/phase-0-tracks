#PSEUDOCODE-5.2 ARRAYS AND HASHES-RELEASE2
#Create a seperate input method for each needed peice of data
#Convert the user input into the correct data type
#Create a hash that collects all of these seperate user inputs.
#Print this hash once all of the pieces of data have been collected by the user
#Allow the user to make one adjustment to an input
#Include these condtions:
# -if the user says "none" for any of the keys, skip it.
# -if the user enters a "key", ask for a new value for that key and update it.
#Print the updated version of the hash and exit.

puts "Client Name:"
client_name=gets.chomp.to_s

puts "Client Age:"
client_age=gets.chomp.to_i

puts "Number of Children:"
num_children=gets.chomp.to_i

puts "Decor Theme:"
decor_theme=gets.chomp.to_s

puts "Number of Rooms:"
num_rooms=gets.chomp.to_i

client = {
  name: client_name,
  age: client_age,
  children: num_children,
  theme: decor_theme,
  rooms: num_rooms
}

p client


puts "Do you need to update any of the information? If so, please enter the keyword for the data that needs updating. If not, please say 'none'."
update=gets.chomp
  if update == "name"
    puts "Client Name:"
    name_update=gets.chomp.to_s
    :name[name_update]
  end
  if update == "age"
    puts "Client Age:"
    age_update=gets.chomp.to_i
    :age[age_update]
  end
  if update == "children"
    puts "Number of Children:"
    children_update=gets.chomp.to_i
    :children[children_update]
  end
  if update == "theme"
    puts "Decor Theme:"
    decor_update=gets.chomp.to_s
    :theme[decor_update]
  end
  if update == "rooms"
    puts "Number of Rooms:"
    room_update=gets.chomp.to_i
    :rooms[room_update]
  end
  if update == "none"
    puts "Thank you. Your entry has been stored."
  end

p client