require 'sinatra/lib/sinatra'
require 'rubygems'

ENV['WIKI_HOME'] = '/home/websites/wiki.theadmin.org/wiki'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => ENV['RACK_ENV'],
  :raise_errors => true,
  :views => '/home/websites/wiki.theadmin.org/application/views'
)

require 'git-wiki.rb'

run Sinatra.application
