get '/' do
  @teams = Team.all

  erb :welcome
end

get '/login' do

end

get '/signup' do

end
