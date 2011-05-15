class TestProgram < ActiveRecord::Base
  belongs_to :test_program_prototype
  has_many :test_rounds, :dependent => :destroy
  has_one :phase, :as => :program

  def complete?
    test_rounds.each do |round|
      if !round.complete?
        @first_incomplete_round = round
        return false
      end
    end
    true
  end

  def first_incomplete_round
    test_rounds.each do |round|
      return (@first_incomplete_round = round) unless round.complete?
    end
    @first_incomplete_round = nil
  end
end
