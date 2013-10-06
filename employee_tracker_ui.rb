require 'active_record'
require './lib/employee'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["development"])

def welcome
  puts "Employee List v0.1"
  menu
end

def menu
  puts "[A]dd an employee. E[x]it."
  input = gets.chomp
  case input.downcase
  when 'a'
    add_employee
  when 'x'
    puts 'Goodbye.'
  else
    puts 'I\'m sorry, I do not understand.'
    menu
  end
end
