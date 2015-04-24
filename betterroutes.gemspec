Gem::Specification.new do |s|
  s.name        = "betterroutes"
  s.version     = "0.2.0"
  s.date        = "2012-01-01"
  s.summary     = "Better Rake routes listing in full color"
  s.description = "A better colorized, formatted visualization of the Rake routes listing."
  s.authors     = ["Caedmon Judd"]
  s.email       = "caedmon@statebuilt.com"
  s.files       = Dir["lib/*"] + Dir["lib/tasks/*"]
  s.add_dependency('colorize')
  s.add_development_dependency "rspec"
end
