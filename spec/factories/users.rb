# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    user "MyString"
    password ""
    mail "MyString"
    nivel 1
  end
end
