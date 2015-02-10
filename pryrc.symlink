Pry.config.editor = 'subl'
Pry.config.color  = true
Pry.config.prompt = Pry::NAV_PROMPT

begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError => e
end

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'

puts "Loaded ~/.pryrc"
puts
puts "Helpful shortcuts:"
puts "c  : continue"
puts "n  : next"
puts "s  : step"
