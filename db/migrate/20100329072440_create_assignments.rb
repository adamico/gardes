class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.integer :senior_id
      t.integer :junior_id
      t.integer :garde_id

      t.timestamps
    end
  end

  def self.down
    drop_table :assignments
  end
end
