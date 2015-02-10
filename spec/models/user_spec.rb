require "spec_helper"

RSpec.describe User do
  it { should have_many :posts }
end
