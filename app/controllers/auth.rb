get '/' do
  @teams = Team.all
  erb :welcome
end

get '/login' do
  erb :login
end

get '/signup' do

end
