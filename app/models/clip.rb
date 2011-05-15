class Clip < ActiveRecord::Base
  belongs_to :sound
  has_attached_file :attachment,
    :url => '/system/:id/clip.:extension',
    :path => ':rails_root/public/system/:id/clip.:extension'
end
