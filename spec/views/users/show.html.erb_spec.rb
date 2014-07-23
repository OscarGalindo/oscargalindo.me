require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :user => "User",
      :password => "",
      :mail => "Mail",
      :nivel => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    rendered.should match(//)
    rendered.should match(/Mail/)
    rendered.should match(/1/)
  end
end
