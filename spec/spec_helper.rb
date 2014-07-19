Dir[File.expand_path("../../lib/*.rb", __FILE__)].each { |f| require f }

RSpec.configure do |config|
  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.order = :random
end
