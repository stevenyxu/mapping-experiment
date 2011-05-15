class AddPositionToEverything < ActiveRecord::Migration
  def self.up
    add_column :phase_prototypes, :position, :integer
    add_column :round_prototypes, :position, :integer
    execute "UPDATE phase_prototypes SET position = id;"
    execute "UPDATE round_prototypes SET position = id;"
  end

  def self.down
    remove_column :round_prototypes, :position
    remove_column :phase_prototypes, :position
  end
end
