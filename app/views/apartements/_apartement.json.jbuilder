json.extract! apartement, :id, :street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pets, :image, :user_id, :description, :created_at, :updated_at
json.url apartement_url(apartement, format: :json)
