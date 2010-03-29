class CreateMedecins < ActiveRecord::Migration
  def self.up
    create_table :medecins do |t|
      t.string :name
      t.string :abbrev
      t.boolean :senior

      t.timestamps
    end
  end

  def self.down
    drop_table :medecins
  end
end
