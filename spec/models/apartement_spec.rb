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
