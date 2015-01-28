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

def add_errors(error_msg)
  if session[:errors]
    session[:errors] << error_msg
  else
    session[:errors] = [error_msg]
  end
end

def display_errors
  errors = session[:errors]
  session[:errors] = nil
  errors.join(", ") if errors
end