class CreateGardes < ActiveRecord::Migration
  def self.up
    create_table :gardes do |t|
      t.date :quand
      t.string :avec
      t.boolean :payee

      t.timestamps
    end
  end

  def self.down
    drop_table :gardes
  end
end
