require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :user => "MyString",
      :password => "",
      :mail => "MyString",
      :nivel => 1
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_user[name=?]", "user[user]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_mail[name=?]", "user[mail]"
      assert_select "input#user_nivel[name=?]", "user[nivel]"
    end
  end
end
