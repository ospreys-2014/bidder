class Account < ActiveRecord::Base
  has_many :bids
  has_many :bid_values, through: :bids

end
