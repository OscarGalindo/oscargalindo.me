require 'spec_helper'

describe "post_cats/new" do
  before(:each) do
    assign(:post_cat, stub_model(PostCat,
      :post => nil,
      :category => nil
    ).as_new_record)
  end

  it "renders new post_cat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_cats_path, "post" do
      assert_select "input#post_cat_post[name=?]", "post_cat[post]"
      assert_select "input#post_cat_category[name=?]", "post_cat[category]"
    end
  end
end
