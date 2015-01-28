get '/' do
  @teams = Team.all
  erb :welcome
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by(name: params[:user][:name])

  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect '/'

  else
    #need to add errors
    redirect '/login'
  end

end

get '/signup' do
  erb :'/signup'
end

post '/signup' do
  user = User.create(params[:user])

  if user.save
    session[:user_id] = user.id
    redirect "/"
  else

    #need to add errors here
    redirect "/login"
  end

end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
