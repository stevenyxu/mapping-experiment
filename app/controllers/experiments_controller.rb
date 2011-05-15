class ExperimentsController < ApplicationController
  def show
    @experiment = Experiment.find(params[:id])
    raise "Forbidden" unless @experiment.user == current_user
    if @experiment.complete?
      redirect_to root_path
    else
      redirect_to @experiment.first_incomplete_phase 
    end
  end
end
