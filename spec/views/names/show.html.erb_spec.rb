require 'rails_helper'

RSpec.describe "names/show", type: :view do
  before(:each) do
    @name = assign(:name, Name.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
