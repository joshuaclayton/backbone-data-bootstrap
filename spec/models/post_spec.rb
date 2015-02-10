require "spec_helper"

RSpec.describe Post do
  it { should belong_to :user }
end
