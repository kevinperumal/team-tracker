post '/team/:id/player' do |id|

  player = Player.find(params[:player][:id])
  player.update(team_id: id)

  redirect "/team/#{id}"
end

delete '/team/:id/player' do |id|

  player = Player.find(params[:player][:id])
  player.update(team_id: nil)

  redirect "/team/#{id}"
end