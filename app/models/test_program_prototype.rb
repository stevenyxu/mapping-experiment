class TestProgramPrototype < ActiveRecord::Base
  has_one :phase_prototype, :as => :program
  has_many :round_prototypes, :as => :program
end
