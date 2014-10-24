require_relative '../../config/application'

class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :event
      t.belongs_to :account
      t.integer :bid_value
      t.timestamps
    end
  end
end
