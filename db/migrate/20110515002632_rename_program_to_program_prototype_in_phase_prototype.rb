class RenameProgramToProgramPrototypeInPhasePrototype < ActiveRecord::Migration
  def self.up
    rename_column :phase_prototypes, :program_type, :program_prototype_type
    rename_column :phase_prototypes, :program_id, :program_prototype_id
  end

  def self.down
    rename_column :phase_prototypes, :program_prototype_id, :program_id
    rename_column :phase_prototypes, :program_prototype_type, :program_type
  end
end
