class TestRound < ActiveRecord::Base
  belongs_to :test_program
  belongs_to :round_prototype
  belongs_to :clip

  def self.create_from_prototype round_prototype
    if rand(2) == 1
      side_tested = 'left'
      clip = round_prototype.pair_prototype.left_sound.random_clip 
    else
      side_tested = 'right'
      clip = round_prototype.pair_prototype.right_sound.random_clip
    end

    create({
      :round_prototype => round_prototype,
      :side_tested => side_tested,
      :clip => clip
    })
  end

  def complete?
    !success.nil?
  end
end
