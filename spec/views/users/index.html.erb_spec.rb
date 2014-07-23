require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :user => "User",
        :password => "",
        :mail => "Mail",
        :nivel => 1
      ),
      stub_model(User,
        :user => "User",
        :password => "",
        :mail => "Mail",
        :nivel => 1
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
