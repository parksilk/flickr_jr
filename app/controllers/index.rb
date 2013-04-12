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
  thumbify(photo)
  photo.save

  redirect '/'
end


get '/photo/:id' do
  @photo = Photo.find(params[:id])
  erb :single_photo
end
