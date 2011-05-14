class CreateTrainingPairPrototypes < ActiveRecord::Migration
  def self.up
    create_table :training_pair_prototypes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :training_pair_prototypes
  end
end
