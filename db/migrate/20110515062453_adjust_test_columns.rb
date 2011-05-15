class AdjustTestColumns < ActiveRecord::Migration
  def self.up
    add_column :test_rounds, :guess_id, :integer
    remove_column :test_rounds, :side_tested
  end

  def self.down
    add_column :test_rounds, :side_tested, :string
    remove_column :test_rounds, :guess_id
  end
end
