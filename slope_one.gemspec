Gem::Specification.new do |s|
  s.name        = "slope_one"
  s.version     = 0.1
  s.authors     = ["Ashley Williams"]
  s.email       = ["hi@ashleyw.co.uk"]
  s.homepage    = "http://github.com/ashleyw/slope_one"
  s.summary     = "Implementation of the Slope One recommendation algorithm."
  s.description = "Implementation of the weighted Slope One collaborative filtering/recommendation algorithm."
 
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "slope_one"
  
  s.files        = File.read("Manifest.txt").split("\n")
  s.require_path = 'lib'
end