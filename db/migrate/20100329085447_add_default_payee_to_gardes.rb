class AddDefaultPayeeToGardes < ActiveRecord::Migration
  def self.up
    change_table :gardes do |t|
      t.change_default(:payee, 0)
    end
  end

  def self.down
    change_table :gardes do |t|
      t.change_default(:payee, 0)
    end
    put "WARNING, Nothing done!"
    put "Cannot assign a NULL default value with migrations"
  end
end
