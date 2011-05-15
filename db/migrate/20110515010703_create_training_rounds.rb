class CreateTrainingRounds < ActiveRecord::Migration
  def self.up
    create_table :training_rounds do |t|
      t.integer :training_program_id
      t.integer :round_prototype_id
      t.integer :left_clip_id
      t.integer :right_clip_id

      t.timestamps
    end
  end

  def self.down
    drop_table :training_rounds
  end
end
