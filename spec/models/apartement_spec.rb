require 'rails_helper'

RSpec.describe Apartement, type: :model do
  let (:user) {User.create(email: 'testing@example.com', password: 'password1', password_confirmation: 'password1')}
  it "should have a valid street" do
    apartement = user.apartements.create(
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

    expect(apartement.errors[:street]).to include "can't be blank"
  end
  it "should have a valid unit" do
    apartement = user.apartements.create(
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

    expect(apartement.errors[:unit]).to include "can't be blank"
  end

  it "should have a valid city" do
      apartement = user.apartements.create(
        street: "Clairemont",
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
  
      expect(apartement.errors[:city]).to include "can't be blank"
  end

  it "should have a valid state" do
      apartement = user.apartements.create(
        street: "Clairemont",
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
  
      expect(apartement.errors[:state]).to include "can't be blank"
  end
  it "should have a valid sqaure footage" do
    apartement = user.apartements.create(
      street: "Clairemont",
      unit: "122",
      city: "Boulder",
      state: "CO",
      price: "1800",
      bedrooms: 3,
      bathrooms: 2.5,
      pets: "yes",
      image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
      description: "Blah blah blah"
      )

    expect(apartement.errors[:square_footage]).to include "can't be blank"
end

  it "should have a valid price" do
    apartement = user.apartements.create(
    street: "Clairemont",
    unit: "122",
    city: "Boulder",
    state: "CO",
    square_footage: "1200",
    bedrooms: 3,
    bathrooms: 2.5,
    pets: "yes",
    image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
    description: "Blah blah blah"
    )

    expect(apartement.errors[:price]).to include "can't be blank"
  end
  it "should have a valid bedrooms" do
    apartement = user.apartements.create(
    street: "Clairemont",
    unit: "122",
    city: "Boulder",
    state: "CO",
    square_footage: "1200",
    price: "1800",
    bathrooms: 2.5,
    pets: "yes",
    image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
    description: "Blah blah blah"
    )

    expect(apartement.errors[:bedrooms]).to include "can't be blank"
  end
  it "should have a valid bathrooms" do
    apartement = user.apartements.create(
    street: "Clairemont",
    unit: "122",
    city: "Boulder",
    state: "CO",
    square_footage: "1200",
    price: "1800",
    bedrooms:3,
    pets: "yes",
    image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
    description: "Blah blah blah"
    )

    expect(apartement.errors[:bathrooms]).to include "can't be blank"
  end
  it "should have a valid pets" do
    apartement = user.apartements.create(
    street: "Clairemont",
    unit: "122",
    city: "Boulder",
    state: "CO",
    square_footage: "1200",
    price: "1800",
    bedrooms: 3,
    bathrooms: 2.5,
    image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
    description: "Blah blah blah"
    )

    expect(apartement.errors[:pets]).to include "can't be blank"
  end
  it "should have a valid images" do
    apartement = user.apartements.create(
    street: "Clairemont",
    unit: "122",
    city: "Boulder",
    state: "CO",
    square_footage: "1200",
    price: "1800",
    bedrooms: 3,
    bathrooms: 2.5,
    pets: "yes",
    description: "Blah blah blah"
    )

    expect(apartement.errors[:image]).to include "can't be blank"
  end
  it "should have a valid description" do
    apartement = user.apartements.create(
    street: "Clairemont",
    unit: "122",
    city: "Boulder",
    state: "CO",
    square_footage: "1200",
    price: "1800",
    bedrooms: 3,
    bathrooms: 2.5,
    pets: "yes",
    image: "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg",
    )

    expect(apartement.errors[:description]).to include "can't be blank"
  end
end
