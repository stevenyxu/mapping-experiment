class ExperimentPrototypesController < ApplicationController
  def index
    @experiment_prototypes = ExperimentPrototype.all
  end
end
