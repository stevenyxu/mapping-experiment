class CreateTestPrograms < ActiveRecord::Migration
  def self.up
    create_table :test_programs do |t|
      t.integer :test_program_prototype_id

      t.timestamps
    end
  end

  def self.down
    drop_table :test_programs
  end
end
