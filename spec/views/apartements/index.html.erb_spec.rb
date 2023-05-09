require 'rails_helper'

RSpec.describe "apartements/index", type: :view do
  before(:each) do
    assign(:apartements, [
      Apartement.create!(
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
      ),
      Apartement.create!(
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
      )
    ])
  end

  it "renders a list of apartements" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Street".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Unit".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Price".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Pets".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
