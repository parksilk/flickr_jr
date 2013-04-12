class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
    
  storage :file
end
