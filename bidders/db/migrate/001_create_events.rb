require_relative '../../config/application'

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_date
      t.string :venue
      t.string :name
      t.string :artist
      t.integer :tickets_available
      t.timestamps
    end
  end
end
