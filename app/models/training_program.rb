class TrainingProgram < ActiveRecord::Base
  belongs_to :training_program_prototype
  has_many :training_rounds, :dependent => :destroy
  has_one :phase, :as => :program

  def complete?
    first_incomplete_round.nil?
  end

  def first_incomplete_round
    return @first_incomplete_round unless @first_incomplete_round.nil?
    training_rounds.each do |round|
      return (@first_incomplete_round = round) unless round.complete?
    end
    @first_incomplete_round = nil
  end

  def public_name
    training_program_prototype.public_name
  end

  def description
    training_program_prototype.description
  end

  def user
    phase.user
  end
end
