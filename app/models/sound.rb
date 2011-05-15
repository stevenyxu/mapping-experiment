class Sound < ActiveRecord::Base
  has_many :clips

  def random_clip
    clips.order('RANDOM()').first
  end
end
