class TestRoundsController < ApplicationController
  before_filter :find_round_and_check_readability, :except => [:index]

  # selects only rounds from completed experiments
  def index
    @test_rounds = TestRound.
      joins(:test_program => {:phase => :experiment}).
      includes(:test_program => {:phase => {:phase_prototype => {}, :experiment => [:user,:experiment_prototype]}}, :clip => :sound, :guess => {})
    respond_to do |format|
      format.csv
    end
  end
  def show
    redirect_to @test_round.test_program if @test_round.complete?
  end
  def update
    @test_round.update_attributes(params[:test_round])
    redirect_to @test_round.test_program
  end
protected
  def find_round_and_check_readability
    @test_round = TestRound.find(params[:id])
    raise "Forbidden" unless @test_round.user == current_user
  end
end
