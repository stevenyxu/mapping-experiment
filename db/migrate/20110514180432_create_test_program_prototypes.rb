class CreateTestProgramPrototypes < ActiveRecord::Migration
  def self.up
    create_table :test_program_prototypes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :test_program_prototypes
  end
end
