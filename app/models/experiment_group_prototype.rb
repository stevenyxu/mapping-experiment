class ExperimentGroupPrototype < ActiveRecord::Base
  has_many :experiment_prototypes

  def new_experiment options = {}
    experiment_prototypes.
      order('RANDOM()').
      first.
      create_instance options
  end
end
