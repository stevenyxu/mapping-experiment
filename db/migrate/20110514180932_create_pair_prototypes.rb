class CreatePairPrototypes < ActiveRecord::Migration
  def self.up
    create_table :pair_prototypes do |t|
      t.string :name
      t.integer :left_sound_id
      t.integer :right_sound_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pair_prototypes
  end
end
