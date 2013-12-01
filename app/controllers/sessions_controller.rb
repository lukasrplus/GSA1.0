class SessionsController < ApplicationController


def create

    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
    session[:u_id] = user.id
    redirect_to user_url(user.id), notice: "Hello, #{user.name}"

    else
    redirect_to root_url, notice: "Invalid email or password"
    end


end


def logout

  reset_session
  redirect_to root_url

end



end
