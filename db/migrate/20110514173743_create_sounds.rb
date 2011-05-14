class CreateSounds < ActiveRecord::Migration
  def self.up
    create_table :sounds do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :sounds
  end
end
