
user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

apartements1 = [
 {
street: "Rimrock",
unit: "122",
city: "Boulder",
state: "CO",
square_footage: 1200,
price: "1800",
bedrooms: 3,
bathrooms: 2.5,
pets: "yes",
image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
description: "Welcome to your new home at 122 Rimrock in Boulder, CO! This spacious 3-bedroom, 2.5-bathroom apartment boasts 1,200 square feet of living space, perfect for families or roommates."
 },
 {
street: "Crotch Cresent",
unit: "4",
city: "Oxford",
state: "UK",
square_footage: 500,
price: "1800",
bedrooms: 1,
bathrooms: 1,
pets: "yes",
image: "https://media.rightmove.co.uk/dir/51k/50881/134091263/50881_HEI220259_IMG_01_0000_max_656x437.jpeg",
description: "Welcome to your new home at Unit 4, Crotch Crescent, located in the heart of Oxford, UK. This cozy 1-bedroom, 1-bathroom apartment is perfect for those who value convenience and comfort. With 500 square feet of living space, this unit is ideal for individuals or couples."
 },
{
street: "BUTT",
unit: "8008",
city: "No Wheres Ville",
state: "KY",
square_footage: 2000,
price: "1800",
bedrooms: 4,
bathrooms: 3.5,
pets: "no",
image: "https://images1.apartments.com/i2/ZIv_1ry1moYgymtO9FL3q552Iwz2awR7j2t2dLTjFIk/117/finish-line-apartments-louisville-ky-building-photo.jpg",
description: "Welcome to your new home at 8008 Butt Street in No Wheres Ville, KY! This spacious 4-bedroom, 3.5-bathroom apartment boasts 2,000 square feet of living space, making it perfect for families or roommates."
 },
]

apartements2 = [
{
street: "Gravy Train",
unit: "30",
city: "Topeka",
state: "KS",
square_footage: 1500,
price: "20",
bedrooms: 3,
bathrooms: 2.0,
pets: "yes",
image: "https://images1.apartments.com/i2/QUeM_iiw0Kq9614kIDTpQd4qbxLxuQeW3QpYGgnJ14o/117/kansas-city-georgetown-apartments-overland-park-ks-building-photo.jpg",
description: "Welcome to your new home at Unit 16, Gravy Train in Topeka, KS! This 3-bedroom, 2-bathroom apartment boasts 1,500 square feet of living space, making it perfect for families or roommates."
}
]

apartements1.each do |apartement|
    user1.apartements.create(apartement)
    puts "creating: #{apartement}"
end

apartements2.each do |apartement|
    user2.apartements.create(apartement)
    puts "creating: #{apartement}"
end


