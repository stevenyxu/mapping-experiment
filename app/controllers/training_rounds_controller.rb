class TrainingRoundsController < ApplicationController
  before_filter :find_round_and_check_readability
  def show
    redirect_to @training_round.training_program if @training_round.complete?
  end
  def update
    @training_round.update_attributes(params[:training_round])
    redirect_to @training_round.training_program
  end
protected
  def find_round_and_check_readability
    @training_round = TrainingRound.find(params[:id])
    raise "Forbidden" unless @training_round.user == current_user
  end
end
