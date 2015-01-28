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

get '/team/:id' do |id|
  @team = Team.find(id)
  erb :'/team/show'

end

get '/team/:id/edit' do |id|
  @team = Team.find(id)
  erb :'/team/edit'

end

put '/team/:id/edit' do |id|

  @team = Team.find(id)
  @team.update(params[:team])

  redirect "/team/#{id}"

end