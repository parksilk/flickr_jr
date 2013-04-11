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
	File.open('uploads/' + params['photofile'][:filename], "w") do |f|
		f.write(params['photofile'][:tempfile].read)
	end
	return "Successful upload."
end