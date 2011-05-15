class TrainingProgramPrototype < ActiveRecord::Base
  has_one :phase_prototype, :as => :program_prototype
  has_many :round_prototypes, :as => :program_prototype

  def create_instance options = {}
    Rails.logger.debug "Creating instance of training program #{id}: #{name}"
    t = TrainingProgram.create({ :training_program_prototype => self }.merge options)
    t.training_rounds = round_prototypes.map do |round_prototype|
      TrainingRound.create_from_prototype round_prototype
    end
    t
  end

  def public_name
    return super unless super.nil? or super.empty?
    name
  end
end
