class AddCompleteToTrainingRound < ActiveRecord::Migration
  def self.up
    add_column :training_rounds, :complete, :boolean
  end

  def self.down
    remove_column :training_rounds, :complete
  end
end
