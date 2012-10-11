desc 'Better Routes -- A colorized version of Rake Routes'
require 'colorize'

task :broutes => :environment do

  path_length = 0
  verb_length = 0
  name_length = 0
  ca_length = 0
  exclude = ['/assets', '/rails/info/properties']

  # Determine column widths
  Twotp::Application.routes.routes.each do |route|
    path_length = route.path.gsub('(.:format)', '').length if route.path.gsub('(.:format)', '').length > path_length
    verb_length = route.verb.length if route.verb.length > verb_length
    name_length = route.name.to_s.length if route.name.to_s.length > name_length

    if route.defaults != nil
      controller_width = route.defaults[:controller].to_s.length
      action_width = route.defaults[:action].to_s.length
      ca_length = controller_width + action_width if (controller_width + action_width) > ca_length
    end
  end

  # Header
  output = "--PATH" << ("-" * (path_length - 5))
  output << "|-METHOD" << ("-" * (verb_length - 5))
  output << "|-NAME" << ("-" * (name_length - 3))
  output << "|-CONTROLLER / ACTION" << ("-" * (ca_length - 4))
  header = output.blue
  puts header

  # Routes
  Twotp::Application.routes.routes.each do |route|

    # Exclusion list
    unless exclude.include? route.path.gsub('(.:format)', '')
      output = "#{route.path.gsub('(.:format)', '')}".yellow
      output << " " * (path_length - route.path.gsub('(.:format)', '').length)
      output << " |".blue
      output << " #{route.verb}".magenta
      output << " " * (verb_length - route.verb.length)
      output << " | ".blue
      output << "#{route.name}".white
      output << " " * (name_length - route.name.to_s.length)
      output << " | ".blue
      output << "C: ".red
      output << route.defaults[:controller].to_s.green
      output << ", A: ".red
      output << route.defaults[:action].to_s.green
      puts output
    end
  end
  puts header

end