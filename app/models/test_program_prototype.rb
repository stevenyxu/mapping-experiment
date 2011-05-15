class TestProgramPrototype < ActiveRecord::Base
  has_one :phase_prototype, :as => :program_prototype
  has_many :round_prototypes, :as => :program_prototype

  def create_instance options = {}
    Rails.logger.debug "Creating instance of test program #{id}: #{name}"
    t = TestProgram.create({ :test_program_prototype => self }.merge options)
    t.test_rounds = round_prototypes.map do |round_prototype|
      TestRound.create_from_prototype round_prototype
    end
    t
  end

  def public_name
    name
  end
end
