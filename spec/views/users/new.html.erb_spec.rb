require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :user => "MyString",
      :password => "",
      :mail => "MyString",
      :nivel => 1
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_user[name=?]", "user[user]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_mail[name=?]", "user[mail]"
      assert_select "input#user_nivel[name=?]", "user[nivel]"
    end
  end
end
