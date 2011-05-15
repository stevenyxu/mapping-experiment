class TrainingRound < ActiveRecord::Base
  belongs_to :training_program
  belongs_to :round_prototype
  belongs_to :left_clip, :class_name => 'Clip'
  belongs_to :right_clip, :class_name => 'Clip'

  def self.create_from_prototype round_prototype
    create({
      :round_prototype => round_prototype,
      :left_clip => round_prototype.pair_prototype.left_sound.random_clip,
      :right_clip => round_prototype.pair_prototype.right_sound.random_clip,
      :complete => false
    })
  end

  def complete?
    complete
  end

  def user
    training_program.user
  end
end
