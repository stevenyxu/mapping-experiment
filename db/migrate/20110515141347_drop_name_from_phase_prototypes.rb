class DropNameFromPhasePrototypes < ActiveRecord::Migration
  def self.up
    remove_column :phase_prototypes, :name
  end

  def self.down
    add_column :phase_prototypes, :name, :string
  end
end
