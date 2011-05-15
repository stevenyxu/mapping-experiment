class TestRound < ActiveRecord::Base
  belongs_to :test_program
  belongs_to :round_prototype
  belongs_to :clip
  belongs_to :guess, :class_name => 'Sound'

  def self.create_from_prototype round_prototype
    if rand(2) == 1
      clip = round_prototype.pair_prototype.left_sound.random_clip 
    else
      clip = round_prototype.pair_prototype.right_sound.random_clip
    end

    create({
      :round_prototype => round_prototype,
      :clip => clip
    })
  end

  def complete?
    !guess?
  end
end
