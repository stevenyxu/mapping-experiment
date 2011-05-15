class CreateTrainingPrograms < ActiveRecord::Migration
  def self.up
    create_table :training_programs do |t|
      t.integer :training_program_prototype_id

      t.timestamps
    end
  end

  def self.down
    drop_table :training_programs
  end
end
