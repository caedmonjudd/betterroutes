Gem::Specification.new do |s|
  s.name        = "betterroutes"
  s.version     = "0.0.1"
  s.date        = "2012-10-11"
  s.summary     = "Better Rake routes listing in full color"
  s.description = "A better colorized, formatted visualization of the Rake routes listing."
  s.authors     = ["Caedmon Judd"]
  s.email       = "caedmon@statebuilt.com"
  s.files       = Dir["lib/tasks/*"]
  s.add_dependency('colorize')
end