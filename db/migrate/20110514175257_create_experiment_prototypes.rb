class CreateExperimentPrototypes < ActiveRecord::Migration
  def self.up
    create_table :experiment_prototypes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :experiment_prototypes
  end
end
