class CreatePhases < ActiveRecord::Migration
  def self.up
    create_table :phases do |t|
      t.integer :experiment_id
      t.integer :phase_prototype_id
      t.string :program_type
      t.integer :program_id

      t.timestamps
    end
  end

  def self.down
    drop_table :phases
  end
end
