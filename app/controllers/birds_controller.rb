get '/birds' do 
	@birds = Bird.all 
	erb :'/birds/all'
end

get '/birds/identify' do 
	erb :'birds/find'
end

post '/birds/identify' do 
	@bird = Bird.find_by(params[:bird])
	redirect "/birds/#{@bird.id}"
end

get '/birds/:id' do 
	@bird = Bird.find(params[:id])
	if request.xhr?
		erb :'/birds/_bird_info', layout: false, locals: {bird: @bird}
	else
		erb :'/birds/one'
	end
end
