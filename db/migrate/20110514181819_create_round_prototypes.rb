class CreateRoundPrototypes < ActiveRecord::Migration
  def self.up
    create_table :round_prototypes do |t|
      t.string :program_type
      t.integer :program_id

      t.timestamps
    end
  end

  def self.down
    drop_table :round_prototypes
  end
end
