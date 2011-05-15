class TestRoundsController < ApplicationController
  def show
    @test_round = TestRound.find(params[:id])
    redirect_to @test_round.test_program if @test_round.complete?
  end
  def update
    @test_round = TestRound.find(params[:id])
    @test_round.update_attributes(params[:test_round])
    redirect_to @test_round
  end
end
