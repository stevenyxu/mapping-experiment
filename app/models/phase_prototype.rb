class PhasePrototype < ActiveRecord::Base
  belongs_to :experiment_prototype
  belongs_to :program_prototype, :polymorphic => true

  def create_instance options = {}
    Rails.logger.debug "Creating instance of phase #{id}: #{name}"
    properties = {
      :phase_prototype => self,
      :program => program_prototype.create_instance
    }.merge(options)
    Phase.create(properties)
  end
end
