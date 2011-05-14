class RoundPrototype < ActiveRecord::Base
  belongs_to :program, :polymorphic => true
  belongs_to :pair_prototype
end
