class TrainingProgram < ActiveRecord::Base
  belongs_to :training_program_prototype
  has_many :training_rounds, :dependent => :destroy
  has_one :phase, :as => :program

  def complete?
    training_rounds.each do |round|
      return false unless round.complete?
    end
    true
  end
end
