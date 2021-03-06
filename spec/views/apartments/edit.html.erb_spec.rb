require 'rails_helper'

RSpec.describe "apartments/edit", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :name => "MyString",
      :contact => "MyString",
      :bed => 1.5,
      :bath => 1.5,
      :price => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit apartment form" do
    render

    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do

      assert_select "input#apartment_latitude[name=?]", "apartment[latitude]"

      assert_select "input#apartment_longitude[name=?]", "apartment[longitude]"

      assert_select "input#apartment_address[name=?]", "apartment[address]"

      assert_select "input#apartment_name[name=?]", "apartment[name]"

      assert_select "input#apartment_contact[name=?]", "apartment[contact]"

      assert_select "input#apartment_bed[name=?]", "apartment[bed]"

      assert_select "input#apartment_bath[name=?]", "apartment[bath]"

      assert_select "input#apartment_price[name=?]", "apartment[price]"

      assert_select "input#apartment_description[name=?]", "apartment[description]"
    end
  end
end
