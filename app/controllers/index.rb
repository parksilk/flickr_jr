get '/' do
  # Look in app/views/index.erb
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
  puts photo.inspect
  "Success! <img src='#{photo.image}'>"
end
