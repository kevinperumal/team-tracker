get '/user/:id' do |id|
  @team = User.find(id).team

  erb :'user/show'
end

get '/user/:id/edit' do |id|
  @team = User.find(id)

  erb :'user/edit'
end