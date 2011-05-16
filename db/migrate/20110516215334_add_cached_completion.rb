class AddCachedCompletion < ActiveRecord::Migration
  def self.up
    add_column :experiments, :cached_complete, :boolean
  end

  def self.down
    remove_column :experiments, :cached_complete
  end
end
