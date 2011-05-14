class PhasePrototype < ActiveRecord::Base
  belongs_to :experiment_prototype
  belongs_to :program, :polymorphic => true
end
