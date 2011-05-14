class DropTestAndTrainingPairs < ActiveRecord::Migration
  def self.up
    drop_table :test_pair_prototypes
    drop_table :training_pair_prototypes
  end

  def self.down
    create_table "test_pair_prototypes", :force => true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "distinction_id"
    end
    create_table "training_pair_prototypes", :force => true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "distinction_id"
    end
  end
end
