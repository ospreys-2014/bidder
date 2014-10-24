require 'faker'
require_relative '../app/models/account'
require_relative '../app/models/bid'
require_relative '../app/models/event'




20.times do
  Account.create(name: Faker::Name.name,
    credit_card: Faker::Business.credit_card_number,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email)
end

10.times do
  Event.create(event_date: Faker::Date.forward(30),
    venue: Faker::Company.name,
    name: Faker::Lorem.words(3),
    artist: Faker::Lorem.words(2),
    tickets_available: 100)
end


