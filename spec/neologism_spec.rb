require "spec_helper"

describe Neologism, "::generate" do
  it "should return alphabet" do
    Neologism.generate.match(/[A-z]+/).should be_true
  end
end
