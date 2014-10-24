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

2.times do
  Event.create(
    event_date: Faker::Date.forward(30),
    venue: Faker::Company.name,
    name: Faker::Lorem.words(3).join(' '),
    artist: Faker::Lorem.words(2).join(' '),
    tickets_available: 100)
end


Account.all.each do |account|

  Bid.create(account_id: account.id, event_id: Event.all.sample.id, bid_value: Random.new.rand(10..80))

end


