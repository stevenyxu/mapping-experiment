class AddPostInterventionToPhasePrototypes < ActiveRecord::Migration
  def self.up
    add_column :phase_prototypes, :post_intervention, :boolean
  end

  def self.down
    remove_column :phase_prototypes, :post_intervention
  end
end
