=begin
I'm making this just to follow along with Zenmaster Avi on this video here:
    https://learn.co/tracks/full-stack-web-development-v3/sinatra/activerecord/video-review-authentication
    @ 1:08:50 of 1:28:48
=end
class UsersController < ApplicationController
  get '/signup' do
    erb :"users/new.html"
  end

  post '/users' do
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      redirect '/login'
    else
      erb :"users/new.html"
    end
  end
end
