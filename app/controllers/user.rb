get '/user/:id' do |id|
  @user = User.find(id)

  erb :'user/show'
end

get '/user/:id/edit' do |id|

  if current_user
    if current_user.id == id.to_i
    @user = User.find(id)
    erb :'user/edit'
  end

  else
  add_errors("You must be logged in to edit")
    redirect "/"
  end
end

put '/user/:id/edit' do |id|
  @user = User.find(id)
  @user.update(params[:user])

  redirect "/user/#{id}"

end

