class RenameRoundPrototypePolymorphicColumns < ActiveRecord::Migration
  def self.up
    rename_column :round_prototypes, :program_id, :program_prototype_id
    rename_column :round_prototypes, :program_type, :program_prototype_type
  end

  def self.down
    rename_column :round_prototypes, :program_prototype_type, :program_type
    rename_column :round_prototypes, :program_prototype_id, :program_id
  end
end
