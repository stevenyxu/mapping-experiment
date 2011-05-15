class TestProgram < ActiveRecord::Base
  belongs_to :test_program_prototype
  has_many :test_rounds, :dependent => :destroy
  has_one :phase, :as => :program

  def complete?
    Rails.logger.debug "Checking if test program is complete."
    test_rounds.each do |round|
      if !round.complete?
        @first_incomplete_round = round
        Rails.logger.debug "Incomplete round found: #{round.id}."
        return false
      end
    end
    Rails.logger.debug "Test program complete."
    true
  end

  def first_incomplete_round
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
end
