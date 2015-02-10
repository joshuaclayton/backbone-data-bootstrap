if defined?(Konacha)
  Konacha.configure do |config|
    require 'capybara/webkit'
    config.driver = :webkit
  end
end
