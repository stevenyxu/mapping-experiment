class TestProgram < ActiveRecord::Base
  belongs_to :test_program_prototype
  has_many :test_rounds, :dependent => :destroy
  has_one :phase, :as => :program

  def complete?
    first_incomplete_round.nil?
  end

  def first_incomplete_round
    return @first_incomplete_round unless @first_incomplete_round.nil?
    test_rounds.each do |round|
      return (@first_incomplete_round = round) unless round.complete?
    end
    @first_incomplete_round = nil
  end

  def public_name
    test_program_prototype.public_name
  end

  def description
    test_program_prototype.description
  end

  def user
    phase.user
  end
end
