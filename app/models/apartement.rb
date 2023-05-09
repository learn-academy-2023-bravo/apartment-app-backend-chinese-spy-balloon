class Apartement < ApplicationRecord
    belongs_to :user
    validates :street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pets, :images, :description presence: true
end
