require_relative '../../config/application'

class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :credit_card
      t.string :address
      t.string :phone
      t.string :email
      t.timestamps
    end
  end
end
