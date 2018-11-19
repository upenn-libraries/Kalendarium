require 'rails_helper'

RSpec.describe "names/index", type: :view do
  before(:each) do
    assign(:names, [
      Name.create!(
        :name => "Name"
      ),
      Name.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of names" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
