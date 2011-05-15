class PhasesController < ApplicationController
  def show
    @phase = Phase.find(params[:id])
    redirect_to @phase.experiment and return if @phase.complete?
    redirect_to @phase.program
  end
end
