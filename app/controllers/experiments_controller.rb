class ExperimentsController < ApplicationController
  def show
    @experiment = Experiment.find(params[:id])
  end
end
