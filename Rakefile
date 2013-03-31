#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Feedback::Application.load_tasks

task :default => [:best_practices]

task :best_practices do
  if system("bundle exec rails_best_practices .")
    puts "All good."
  else
    puts "Some bad practices here."
    exit(1)
  end
end
