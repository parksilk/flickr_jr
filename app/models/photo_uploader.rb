class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  # version :thumb do
  #   process :resize_to_fill => [200, 200]
  # end
    
  storage :file
end
