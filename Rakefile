require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/slope_one'

Hoe.plugin :newgem

$hoe = Hoe.spec 'slope_one' do
  self.developer 'Ashley Williams', 'hi@ashleyw.co.uk'
  self.rubyforge_name = self.name # TODO this is default value
end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }
