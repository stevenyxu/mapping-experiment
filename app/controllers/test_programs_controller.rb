class TestProgramsController < ApplicationController
  def show
    @test_program = TestProgram.find(params[:id])
    redirect_to @test_program.phase if @test_program.complete?
    redirect_to @test_program.first_incomplete_round
  end
end
