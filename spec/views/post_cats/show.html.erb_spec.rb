require 'spec_helper'

describe "post_cats/show" do
  before(:each) do
    @post_cat = assign(:post_cat, stub_model(PostCat,
      :post => nil,
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
