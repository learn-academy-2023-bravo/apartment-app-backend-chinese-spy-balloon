require 'rails_helper'

RSpec.describe Apartement, type: :model do
  it "should have a valid street" do
    apartement = user.apartement.create(
      unit: "122",
      city: "Boulder",
      state: "CO",
      square_footage: 1200,
      price: "1800",
      bedrooms: 3,
      bathrooms: 2.5,
      pets: "yes",
      image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
      description: "Blah blah blah"
      )

    expect(apartement.error[:street]).to include "cant be blank"
  end
  it "should have a valid unit" do
    apartement = user.apartement.create(
      street:"Clairemont",
      city: "Boulder",
      state: "CO",
      square_footage: 1200,
      price: "1800",
      bedrooms: 3,
      bathrooms: 2.5,
      pets: "yes",
      image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
      description: "Blah blah blah"
      )

    expect(apartement.error[:unit]).to include "cant be blank"
  end

  it "should have a valid city" do
      apartement = user.apartement.create(
        street: "Clairemont"
        unit: "122",
        state: "CO",
        square_footage: 1200,
        price: "1800",
        bedrooms: 3,
        bathrooms: 2.5,
        pets: "yes",
        image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
        description: "Blah blah blah"
        )
  
      expect(apartement.error[:city]).to include "cant be blank"
  end

  it "should have a valid state" do
      apartement = user.apartement.create(
        street: "Clairemont"
        unit: "122",
        city: "Boulder",
        square_footage: 1200,
        price: "1800",
        bedrooms: 3,
        bathrooms: 2.5,
        pets: "yes",
        image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
        description: "Blah blah blah"
        )
  
      expect(apartement.error[:state]).to include "cant be blank"
  end
  it "should have a valid sqaure footage" do
    apartement = user.apartement.create(
      street: "Clairemont"
      unit: "122",
      city: "Boulder",
      state: "CO"
      price: "1800",
      bedrooms: 3,
      bathrooms: 2.5,
      pets: "yes",
      image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
      description: "Blah blah blah"
      )

    expect(apartement.error[:square_footage]).to include "cant be blank"
end

it "should have a valid price" do
  apartement = user.apartement.create(
    street: "Clairemont"
    unit: "122",
    city: "Boulder",
    state: "CO"
    square_footage: "1200",
    bedrooms: 3,
    bathrooms: 2.5,
    pets: "yes",
    image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
    description: "Blah blah blah"
    )

  expect(apartement.error[:price]).to include "cant be blank"
end
it "should have a valid bedrooms" do
  apartement = user.apartement.create(
    street: "Clairemont"
    unit: "122",
    city: "Boulder",
    state: "CO"
    square_footage: "1200",
    price: "1800",
    bathrooms: 2.5,
    pets: "yes",
    image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
    description: "Blah blah blah"
    )

  expect(apartement.error[:bedrooms]).to include "cant be blank"
end



    

end
