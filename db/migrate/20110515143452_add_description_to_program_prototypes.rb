class AddDescriptionToProgramPrototypes < ActiveRecord::Migration
  def self.up
    add_column :training_program_prototypes, :description, :text
    add_column :test_program_prototypes, :description, :text
  end

  def self.down
    remove_column :test_program_prototypes, :description
    remove_column :training_program_prototypes, :description
  end
end
