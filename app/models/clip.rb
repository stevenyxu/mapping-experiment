class Clip < ActiveRecord::Base
  belongs_to :sound
  has_attached_file :attachment
end
