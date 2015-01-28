def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end

def current_user_has_team?

  if session[:user_id]
    if User.find(session[:user_id]).team
      return true
    end

  else
    return nil
  end

end

