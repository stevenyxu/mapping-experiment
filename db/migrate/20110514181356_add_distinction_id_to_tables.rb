class AddDistinctionIdToTables < ActiveRecord::Migration
  def self.up
    add_column :training_pair_prototypes, :distinction_id, :integer
    add_column :test_pair_prototypes, :distinction_id, :integer
  end

  def self.down
    remove_column :test_pair_prototypes, :distinction_id
    remove_column :training_pair_prototypes, :distinction_id
  end
end
