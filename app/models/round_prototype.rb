class RoundPrototype < ActiveRecord::Base
  belongs_to :program_prototype, :polymorphic => true
  belongs_to :pair_prototype
end
