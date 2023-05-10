require 'rails_helper'

RSpec.describe "Apartements", type: :request do
  let (:user) {User.create(email: 'testing@example.com', password: 'password1', password_confirmation: 'password1')}
  describe 'GET /index' do
    it 'returns a list of all apartements' do
      apartement= user.apartements.create(
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
      description: "Blah blah blah")

      get '/apartements'
      apartements = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartements.length).to eq 1
    end
  end
  describe 'POST /create' do
    it "creates an apartement" do
      apartement_params = {
      apartement: {
        user_id: user.id,
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
        description: "Blah blah blah"
    }
      }
      post '/apartements', params: apartement_params
      expect(response).to have_http_status(200)
      apartement = Apartement.first
      expect(apartement.street).to eq "Rimrock"
      expect(apartement.unit).to eq "122"
      expect(apartement.city).to eq "Boulder"
      expect(apartement.state).to eq "CO"
      expect(apartement.square_footage).to eq 1200
      expect(apartement.price).to eq "1800"
      expect(apartement.bedrooms).to eq 3
      expect(apartement.bathrooms).to eq 2.5
      expect(apartement.pets).to eq "yes"
      expect(apartement.image).to eq "https://images1.apartments.com/i2/ioTJb1UnNirlbmJ6799OCHUvEJl38m39e8nmNidka1k/117/mysa-at-the-crossing-boulder-co-building-photo.jpg"
      expect(apartement.description).to eq "Blah blah blah"
    end
  end
end