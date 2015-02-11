#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

BackboneDataBootstrap::Application.load_tasks

namespace :konacha do
  task :run_with_headless do
    require "headless"

    Headless.ly do
      Rake::Task["konacha:run"].invoke
    end
  end
end

task default: ["konacha:run_with_headless", :spec]
