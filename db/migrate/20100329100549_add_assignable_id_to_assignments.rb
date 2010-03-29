class AddAssignableIdToAssignments < ActiveRecord::Migration
  def self.up
    change_table :assignments do |t|
      t.references :assignable, :polymorphic => true
    end
  end

  def self.down
    change_table :assignments do |t|
      t.remove_references(:assignable, :polymorphic => true)
    end
  end
end
