require "./config/environment"
require "sinatra/activerecord/rake"

# I can add as many namespaces as I want to:
namespace :Sugar do
  namespace :Zaza do
    desc "This is a console to play around in the program"
    task :console do
      Pry.start
    end
  end
end
