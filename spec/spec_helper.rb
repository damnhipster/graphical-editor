ENV['RACK_ENV'] = 'test'

Bundler.setup(:default, :test)

require_relative '../app.rb'
require 'capybara/rspec'

Capybara.app = GraphicalEditor.new

RSpec.configure do |config|

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.order = :random
end
