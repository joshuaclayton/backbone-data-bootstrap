FactoryGirl.define do
  sequence(:email) {|n| "person#{n}@example.com" }

  factory :user do
    email
    name 'John Doe'
  end

  factory :post do
    user
    title 'I Love Ruby!'
    body 'Ruby is the greatest thing in the world.'
  end
end
