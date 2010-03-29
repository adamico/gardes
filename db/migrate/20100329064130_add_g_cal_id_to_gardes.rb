class AddGCalIdToGardes < ActiveRecord::Migration
  def self.up
    add_column :gardes, :gcal_id, :string
  end

  def self.down
    remove_column :gardes, :gcal_id
  end
end
