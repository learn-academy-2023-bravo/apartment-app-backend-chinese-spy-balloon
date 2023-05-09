require 'rails_helper'

RSpec.describe "apartements/new", type: :view do
  before(:each) do
    assign(:apartement, Apartement.new(
      street: "MyString",
      unit: "MyString",
      city: "MyString",
      state: "MyString",
      square_footage: 1,
      price: "MyString",
      bedrooms: 1,
      bathrooms: 1.5,
      pets: "MyString",
      image: "MyText",
      user_id: 1,
      description: "MyText"
    ))
  end

  it "renders new apartement form" do
    render

    assert_select "form[action=?][method=?]", apartements_path, "post" do

      assert_select "input[name=?]", "apartement[street]"

      assert_select "input[name=?]", "apartement[unit]"

      assert_select "input[name=?]", "apartement[city]"

      assert_select "input[name=?]", "apartement[state]"

      assert_select "input[name=?]", "apartement[square_footage]"

      assert_select "input[name=?]", "apartement[price]"

      assert_select "input[name=?]", "apartement[bedrooms]"

      assert_select "input[name=?]", "apartement[bathrooms]"

      assert_select "input[name=?]", "apartement[pets]"

      assert_select "textarea[name=?]", "apartement[image]"

      assert_select "input[name=?]", "apartement[user_id]"

      assert_select "textarea[name=?]", "apartement[description]"
    end
  end
end
