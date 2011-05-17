class Phase < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :phase_prototype
  belongs_to :program, :polymorphic => true, :dependent => :destroy

  def complete?
    program.complete?
  end

  def experiment_prototype
    experiment.experiment_prototype
  end

  def name
    phase_prototype.name
  end

  def post_intervention?
    phase_prototype.post_intervention == true
  end

  def user
    experiment.user
  end
end
