ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'database_cleaner'
require 'factory_bot_rails'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation, except: %w[ar_internal_metadata])
    DatabaseCleaner.strategy = :transaction
  end

  config.before do
    DatabaseCleaner.clean
    DatabaseCleaner.start
  end
end
