get '/user/:id' do |id|
  @user = User.find(id)

  erb :'user/show'
end

get '/user/:id/edit' do |id|
  @user = User.find(id)

  erb :'user/edit'
end

put '/user/:id/edit' do |id|
  @user = User.find(id)
  @user.update(params[:user])

  redirect "/user/#{id}"

end

