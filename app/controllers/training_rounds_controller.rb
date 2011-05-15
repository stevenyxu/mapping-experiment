class TrainingRoundsController < ApplicationController
  def show
    @training_round = TrainingRound.find(params[:id])
    redirect_to @training_round.training_program if @training_round.complete?
  end
  def update
    @training_round = TrainingRound.find(params[:id])
    @training_round.update_attributes(params[:training_round])
    redirect_to @training_round
  end
end
