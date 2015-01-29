get '/team/new' do
  erb :'/team/new'
end

post '/team/new' do

  team = Team.create(name: params[:team][:name], user_id: session[:user_id])

  if team.save
    redirect "/"
  else
    add_errors("Problem saving your team")
    redirect "/"
  end

end

get '/team/:id' do |id|
  @team = Team.find(id)
  erb :'/team/show'

end

get '/team/:id/edit' do |id|

  @team = Team.find(id)

  if current_user
    if current_user.id == @team.user_id
    @available = Player.get_available_players
    @unavailable = Player.unavailable_players
     erb :'/team/edit'
    end

  else
    add_errors("You must be logged in to edit")
    redirect '/'
  end

end

put '/team/:id/edit' do |id|
  @team = Team.find(id)
  @team.update(params[:team])

  redirect "/team/#{id}"

end

delete '/team/:id' do |id|
  team = Team.find(id)

  team.players.each do |player|
    player.update(team_id: nil)
  end

  Team.find(id).destroy
  redirect "/"

end