require 'spec_helper'

describe "post_cats/index" do
  before(:each) do
    assign(:post_cats, [
      stub_model(PostCat,
        :post => nil,
        :category => nil
      ),
      stub_model(PostCat,
        :post => nil,
        :category => nil
      )
    ])
  end

  it "renders a list of post_cats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
