namespace :db do
  desc 'bootstrap some data'
  task bootstrap: :environment do
    include FactoryGirl::Syntax::Methods

    users = 5.times.map do
      create :user, name: Faker::Name.name, email: Faker::Internet.email
    end

    20.times do
      create :post, user: users.sample, title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs
    end
  end
end
