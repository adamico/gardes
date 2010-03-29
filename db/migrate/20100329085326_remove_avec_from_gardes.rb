class RemoveAvecFromGardes < ActiveRecord::Migration
  def self.up
    change_table :gardes do |t|
      t.remove :avec
    end
  end

  def self.down
    change_table :gardes do |t|
      t.string :avec
    end
  end
end
