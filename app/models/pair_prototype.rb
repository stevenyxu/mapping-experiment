class PairPrototype < ActiveRecord::Base
  belongs_to :left_sound, :class_name => 'Sound'
  belongs_to :right_sound, :class_name => 'Sound'
end
