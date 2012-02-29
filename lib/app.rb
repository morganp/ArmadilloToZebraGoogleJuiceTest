
require 'rubygems'
require 'sinatra/base'
#require 'sinatra/session'
#require 'sinatra/flash'
require_relative 'partials'

Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each {|file| require file }


#require 'active_record'


module ArmadilloToZebraGoogleJuiceTest
  VERSION = '0.0.1'

  class App < Sinatra::Base
    #register Sinatra::Session
    use Rack::MethodOverride
    set :public_folder, "public"
    helpers Sinatra::Partials

    ## Flash messages
    #enable :sessions
    #register Sinatra::Flash

    $site_config = {}    

    #Configure Modules ran when starting/restarting Server
    configure :development do
      require "sinatra/reloader"

      puts "Development"
      register Sinatra::Reloader
      also_reload "models/*.rb"
      also_reload "helpers/*.rb"

      #ActiveRecord::Base.establish_connection(
      #  :adapter   => 'sqlite3',
      #  :database  => './db/devel.db'
      #)
    end

    configure :test do
      puts "Test"
    end

    configure :production do
      $site_config[:analytics_ena] = true
      #db = ENV["DATABASE_URL"]
      #db ||= '' # Making it safe ofr non heroku deployment
      #if db.match(/postgres:\/\/(.*):(.*)@(.*)\/(.*)/) 
      #  username = $1
      #  password = $2
      #  hostname = $3
      #  database = $4
      #
      #    ActiveRecord::Base.establish_connection(
      #      :adapter  => 'postgresql',
      #      :host     => hostname,
      #      :username => username,
      #      :password => password,
      #      :database => database
      #    )
      # end
    end


    #Ran on Server Error
    error do
      e = request.env['sinatra.error']
      puts e.to_s
      puts e.backtrace.join("
")
      "Application error"
    end

    #Some session setup
    set :session_fail, '/login'


    get '/' do
    erb:'sitemap'
    end

    get '/WA3kM6' do
      @title   = false
      @heading = false
      erb:'basic'
    end

    get '/Qv8P3L' do
      @title   = true
      @heading = false
      erb:'basic'
    end

    get '/GyDhEk' do
      @title   = false
      @heading = true
      erb:'basic'
    end

    get '/EXbUQh' do
      @title   = true
      @heading = true
      erb:'basic'
    end

#Lots of links on the page
    # lots of links to the page


  end
end
if $0 == __FILE__
  ArmadilloToZebraGoogleJuiceTest::App.run!
end

