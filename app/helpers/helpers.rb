helpers do

def thumbify(photo)
  image = MiniMagick::Image.open(photo.image.current_path)
  image.resize "100x100"
  photo.thumbnail = image

end

end
