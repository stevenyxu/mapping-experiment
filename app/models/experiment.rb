class Experiment < ActiveRecord::Base
  belongs_to :user
  belongs_to :experiment_prototype
  has_many :phases, :dependent => :destroy

  validates :user, :presence => true
  validates :experiment_prototype, :presence => true

  def complete?
    first_incomplete_phase == nil
  end

  def first_incomplete_phase
    return @first_incomplete_phase if @first_incomplete_phase
    phases.each do |phase|
      if !phase.complete?
        Rails.logger.debug "Incomplete phase found."
        return (@first_incomplete_phase = phase)
      end
    end
    Rails.logger.debug "Incomplete phase not found... attempting to generate next phase."
    return (@first_incomplete_phase = generate_next_phase)
  end

  def generate_next_phase
    key = 0
    experiment_prototype.phase_prototypes.order('position ASC').each do |intended_phase_prototype|
      if phases[key] && phases[key].phase_prototype == intended_phase_prototype
        key = key + 1
      else
        Rails.logger.debug "Generating next phase."
        return intended_phase_prototype.create_instance(:experiment => self)
      end
    end
    Rails.logger.debug "There is no next phase."
    nil
  end

  def public_name
    experiment_prototype.experiment_group_prototype.name
  end
end
