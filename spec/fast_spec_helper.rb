$: << File.expand_path('../..', __FILE__)

require 'webmock/rspec'

Dir['spec/support/**/*.rb'].each {|f| require f}

RSpec.configure do |config|
  config.order = 'random'
  config.include GithubApiHelper
  WebMock.disable_net_connect!(allow_localhost: true)
end
