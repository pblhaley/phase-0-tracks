application = {
  name: "Peter Haley",
  address: "123 Main Street",
  email: "peter@gmail.com",
  phone: "123-456-7890",
  fave_shade_blue: "carolina",
  wallpaper: "photorealistic woodsy scenes",
  ombre: "so last season"
}

#DRIVER CODE
application[:wallpaper] = "paisley"
application[:phone] = "098-765-4321"
application[:hired] = "hell yes"

p application

name = :name
puts application[name]

puts application[:name] + " " +application[:address]