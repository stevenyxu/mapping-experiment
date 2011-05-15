class TestRoundsController < ApplicationController
  before_filter :find_round_and_check_readability
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
