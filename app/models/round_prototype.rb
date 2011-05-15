class RoundPrototype < ActiveRecord::Base
  belongs_to :program_prototype, :polymorphic => true
  belongs_to :pair_prototype
  acts_as_list :scope => :program_prototype
end
