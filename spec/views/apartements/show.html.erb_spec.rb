require 'rails_helper'

RSpec.describe "apartements/show", type: :view do
  before(:each) do
    assign(:apartement, Apartement.create!(
      street: "Street",
      unit: "Unit",
      city: "City",
      state: "State",
      square_footage: 2,
      price: "Price",
      bedrooms: 3,
      bathrooms: 4.5,
      pets: "Pets",
      image: "MyText",
      user_id: 5,
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/Pets/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/MyText/)
  end
end
