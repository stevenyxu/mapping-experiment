class PhasesController < ApplicationController
  def show
    @phase = Phase.find(params[:id])
    redirect_to @phase.experiment if @phase.complete?
    redirect_to @phase.program
  end
end
