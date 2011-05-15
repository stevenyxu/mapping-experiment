class ExperimentsController < ApplicationController
  def show
    @experiment = Experiment.find(params[:id])
    redirect_to @experiment.first_incomplete_phase unless @experiment.complete?
  end
end
