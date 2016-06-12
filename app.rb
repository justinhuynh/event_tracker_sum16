require 'sinatra'

get '/events' do
  # index
end

post '/events' do
  # create
end

get '/events/new' do
  # new
end

get '/events/:id/edit' do
  # edit
end

get '/event/:id' do
  # show
end

patch '/events/:id' do
  # update (change)
end

put '/events/:id' do
  # update (overwrite)
end

delete '/events/:id' do
  # destroy
end
