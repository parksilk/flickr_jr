class Photo < ActiveRecord::Base
  mount_uploader :image, PhotoUploader
  mount_uploader :thumbnail, PhotoUploader
end
