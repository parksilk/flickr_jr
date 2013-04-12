get '/' do
  @photos = Photo.all
  erb :index
end

# Show the upload page -- Handle GET-requests
get '/upload' do
	erb :upload
end

# Receive and save the uploaded file -- Handle POST-requests
post '/upload' do
  photo = Photo.new
  photo.image = params[:photofile]
  photo.save

  image = MiniMagick::Image.open(photo.image.current_path)
  image.resize "100x100"
  thumb_url = photo.image.current_path.split(".").first + "_thumb." + photo.image.current_path.split(".").last
  image.write thumb_url

  Photo.create(:image => image)

  redirect '/'
end
