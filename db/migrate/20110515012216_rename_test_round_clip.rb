class RenameTestRoundClip < ActiveRecord::Migration
  def self.up
    rename_column :test_rounds, :left_clip_id, :clip_id
    remove_column :test_rounds, :right_clip_id
  end

  def self.down
    add_column :test_rounds, :right_clip_id, :integer
    rename_column :test_rounds, :clip_id, :left_clip_id
  end
end
