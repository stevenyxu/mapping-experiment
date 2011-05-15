class AddInterestAndEligibleToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :interest, :boolean
    add_column :users, :eligible, :boolean
  end

  def self.down
    remove_column :users, :eligible
    remove_column :users, :interest
  end
end
