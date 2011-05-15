class TestRoundsController < ApplicationController
  def show
    @test_round = TestRound.find(params[:id])
  end
end
