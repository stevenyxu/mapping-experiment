class AddPublicNameToTrainingProgramPrototypes < ActiveRecord::Migration
  def self.up
    add_column :training_program_prototypes, :public_name, :string
  end

  def self.down
    remove_column :training_program_prototypes, :public_name
  end
end
