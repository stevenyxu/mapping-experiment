class TestProgram < ActiveRecord::Base
  belongs_to :test_program_prototype
  has_many :test_rounds, :dependent => :destroy
  has_one :phase, :as => :program

  scope :with_prototype, lambda { |p|
    where(:test_program_prototype_id => p.id)
  }

  def complete?
    first_incomplete_round.nil?
  end

  def correct
    test_rounds.select {|r| r.success? }.count
  end

  def first_incomplete_round
    return @first_incomplete_round unless @first_incomplete_round.nil?
    test_rounds.each do |round|
      return (@first_incomplete_round = round) unless round.complete?
    end
    @first_incomplete_round = nil
  end

  def experiment
    phase.experiment
  end

  def experiment_prototype
    phase.experiment_prototype
  end

  def name
    public_name
  end

  def number_of_rounds
    test_rounds.count
  end

  def post_intervention?
    phase.post_intervention?
  end

  def public_name
    test_program_prototype.public_name
  end

  def score
    Float(correct) / Float(number_of_rounds)
  end

  def description
    test_program_prototype.description
  end

  def user
    phase.user
  end
end
