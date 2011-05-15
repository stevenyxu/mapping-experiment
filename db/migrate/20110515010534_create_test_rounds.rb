class CreateTestRounds < ActiveRecord::Migration
  def self.up
    create_table :test_rounds do |t|
      t.integer :test_program_id
      t.integer :round_prototype_id
      t.string :side_tested
      t.boolean :success
      t.integer :left_clip_id
      t.integer :right_clip_id

      t.timestamps
    end
  end

  def self.down
    drop_table :test_rounds
  end
end
