require 'sinatra/base'
require 'json'
require_relative './lib/note.rb'

class ThermostatApp < Sinatra::Base


  get "/" do
    File.read('public/index.html')

  end


  get "/note" do

        note = Note.instance
        random_note = note.pick
        { note: random_note,
          status: 200
         }.to_json


  end

  post '/note' do

    note = Note.instance
    note.add(params[:saved_note])
    { status: 200 }.to_json

  end

  run! if app_file == $0
end
