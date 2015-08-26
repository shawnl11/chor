

def twitter
  auth = request.env["omniauth.auth']
  user = User.where(uid: auth["uid"]).first || User.from_twitter(auth)
  if user
    session[:user_id] = user.id
    flash[:notice] = "You have been logged in through Twitter."
    redirect_back_or root_url
 end
end
