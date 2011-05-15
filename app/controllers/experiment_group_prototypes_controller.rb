class ExperimentGroupPrototypesController < ApplicationController
  def index
    @experiment_group_prototypes = ExperimentGroupPrototype.all
  end
  def show
    @experiment_group_prototype = ExperimentGroupPrototype.find(params[:id])
    redirect_to current_user.experiment_in(@experiment_group_prototype) || @experiment_group_prototype.new_experiment(:user => current_user)
  end
end
