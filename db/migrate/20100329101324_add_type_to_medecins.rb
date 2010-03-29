class AddTypeToMedecins < ActiveRecord::Migration
  def self.up
    add_column :medecins, :type, :string
  end

  def self.down
    remove_column :medecins, :type
  end
end
