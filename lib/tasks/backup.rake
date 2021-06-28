require 'rake'
require 'rubygems'

namespace :app do
  desc "backup CRM DATABASE"
  task :backup  => :environment do 
    puts Account.first.inspect
  end    
end 