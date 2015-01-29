post '/team/:id/player' do |id|

if request.xhr?
  player = Player.find(params[:player][:id])
  player.update(team_id: id)
  player.to_json


else
  player = Player.find(params[:player][:id])
  player.update(team_id: id)

  redirect "/team/#{id}"
end

end

delete '/team/:id/player' do |id|

  player = Player.find(params[:player][:id])
  player.update(team_id: nil)

  redirect "/team/#{id}"

end