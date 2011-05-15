class Clip < ActiveRecord::Base
  belongs_to :sound
  has_attached_file :attachment,
    :url => '/system/:id/:basename.:extension',
    :path => ':rails_root/public/system/:id/:basename.:extension'
end
