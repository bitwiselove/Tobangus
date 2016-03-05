FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :admin, class: User do
    email
    password "password"
  end
end
