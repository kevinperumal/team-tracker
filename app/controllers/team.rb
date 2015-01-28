get '/team/new' do
  erb :'/team/new'
end

post '/team/new' do

   team = Team.create(name: params[:team][:name], user_id: session[:user_id])

  if team.save
    redirect "/"
  else
    #need to add errors here
    redirect "/"
  end

end