class CreatePhasePrototypes < ActiveRecord::Migration
  def self.up
    create_table :phase_prototypes do |t|
      t.integer :experiment_prototype_id
      t.string :program_type
      t.integer :program_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :phase_prototypes
  end
end
