FactoryGirl.define do
  sequence(:email) {|n| "person#{n}@example.com" }

  factory :user do
    email
    name 'John Doe'
  end

  factory :post do
    user

    title 'I Love Ruby!'
    body <<-END
Ruby is the greatest thing in the world.

I really love Ruby because it's such a fun language!
    END
  end
end
