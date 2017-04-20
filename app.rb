require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @change = params.fetch('input').to_i.change()
  erb(:result)
end
