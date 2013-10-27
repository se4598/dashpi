require 'dashing'

Dotenv.load

configure do
  set :auth_token, ENV['DASHING_AUTH_TOKEN']
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application
