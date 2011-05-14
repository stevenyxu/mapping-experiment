class CreateTrainingProgramPrototypes < ActiveRecord::Migration
  def self.up
    create_table :training_program_prototypes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :training_program_prototypes
  end
end
