class ExperimentPrototype < ActiveRecord::Base
  has_many :phase_prototypes
  belongs_to :experiment_group_prototype

  def create_instance options
    Experiment.create({:experiment_prototype => self}.merge options)
  end
end
