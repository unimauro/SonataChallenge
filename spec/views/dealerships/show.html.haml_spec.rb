require 'rails_helper'

RSpec.describe "dealerships/show", type: :view do
  before(:each) do
    @dealership = assign(:dealership, Dealership.create!(
      name: "Name",
      address: "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
  end
end
