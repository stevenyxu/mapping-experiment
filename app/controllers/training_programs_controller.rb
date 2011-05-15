class TrainingProgramsController < ApplicationController
  def show
    @training_program = TrainingProgram.find(params[:id])
    raise "Forbidden" unless @training_program.user == current_user
    redirect_to @training_program.phase and return if @training_program.complete?
    redirect_to @training_program.first_incomplete_round
  end
end
