RSpec.configure do |config|
  config.around type: :feature do |example|
    Headless.ly do
      example.run
    end
  end
end
