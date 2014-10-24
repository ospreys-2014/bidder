class Bid < ActiveRecord::Base
  belongs_to :event
  belongs_to :account

end
