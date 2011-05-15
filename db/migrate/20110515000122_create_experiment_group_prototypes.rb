class CreateExperimentGroupPrototypes < ActiveRecord::Migration
  def self.up
    create_table :experiment_group_prototypes do |t|
      t.string :name

      t.timestamps
    end
    add_column :experiment_prototypes, :experiment_group_prototype_id, :integer
  end

  def self.down
    remove_column :experiment_prototypes, :experiment_group_prototype_id
    drop_table :experiment_group_prototypes
  end
end
