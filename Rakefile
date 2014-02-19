# encoding: UTF-8
require 'bundler'
Bundler::GemHelper.install_tasks

require 'rake/testtask'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

desc "Release to gemcutter"
task :release => :package do
  require 'rake/gemcutter'
  Rake::Gemcutter::Tasks.new(spec).define
  Rake::Task['gem:push'].invoke
end

<<<<<<< HEAD
desc "Generates a dummy app for testing"
task :test_app do
  ENV['LIB_NAME'] = 'spree_variant_options'
  Rake::Task['common:test_app'].invoke
end




# # encoding: UTF-8
# require 'rubygems'
# begin
#   require 'bundler/setup'
# rescue LoadError
#   puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
# end
# 
# #require 'rake'
# require 'rake/testtask'
# 
# Bundler::GemHelper.install_tasks
# 
# Rake::TestTask.new(:test) do |t|
#   t.libs << 'lib'
#   t.libs << 'test'
#   t.pattern = 'test/**/*_test.rb'
#   t.verbose = false
# end
# 
# require 'cucumber/rake/task'
# Cucumber::Rake::Task.new do |t|
#   t.cucumber_opts = %w{--format pretty}
# end
# 
# task :default => [ :test, :cucumber ]
=======
task :default => [ :test, :cucumber ]

require 'spree/testing_support/extension_rake'
desc 'Generates a dummy app for testing'
task :test_app do
  ENV['LIB_NAME'] = 'spree_variant_options'
  ENV['DUMMY_PATH'] = File.expand_path("../test/dummy", __FILE__)
  Rake::Task['extension:test_app'].invoke
end
>>>>>>> numerico/master
