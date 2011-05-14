class AddPairPrototypeIdToRoundPrototypes < ActiveRecord::Migration
  def self.up
    add_column :round_prototypes, :pair_prototype_id, :integer
  end

  def self.down
    remove_column :round_prototypes, :pair_prototype_id
  end
end
