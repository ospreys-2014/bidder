require_relative '../../config/application'

class RemoveEvents < ActiveRecord::Migration
  def top
    remove_column :event_time
  end
end
