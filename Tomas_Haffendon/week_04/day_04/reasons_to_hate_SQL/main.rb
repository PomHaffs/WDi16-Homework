require 'sqlite3'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :home
end

get '/reasons' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true
  @all_reasons = db.execute "SELECT * FROM reasons;"
  db.close
  erb :reasons_index
end

get '/reasons/new' do
  erb :reasons_new
end

post '/reasons' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true
  sql = "INSERT INTO reasons (reason, description) VALUES ('#{params[:reason]}','#{params[:description]}');"
  reason = db.execute(sql)
  db.close
  redirect '/reasons'
end

get '/reasons/:id/edit' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true

  @reason = db.execute( "SELECT * FROM reasons WHERE id == #{params[:id]}" ).first
  db.close
  erb :reasons_edit
end

post '/reasons/:id' do
  sql = "UPDATE reasons SET reason = '#{params[:reason]}', description = '#{params[:description]}' WHERE id ==#{params[:id]};"


  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true

  db.execute sql
  db.close
  redirect "/reasons/#{params[:id]}"
end

get '/reasons/:id/delete' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true

  db.execute "DELETE FROM reasons WHERE id == #{params[:id]};"
  db.close
  redirect "/reasons"
end

get '/reasons/:id' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true

  @reason = db.execute( "SELECT * FROM reasons WHERE id == #{params[:id]}").first
  db.close

  puts "\n\n"
  p @reason
  puts "\n\n"
  erb :reasons_show
end
