class AddExperimentPrototypeIdToExperiments < ActiveRecord::Migration
  def self.up
    add_column :experiments, :experiment_prototype_id, :integer
  end

  def self.down
    remove_column :experiments, :experiment_prototype_id
  end
end
