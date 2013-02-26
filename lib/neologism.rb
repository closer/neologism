require "neologism/version"
require "neologism/generator"

module Neologism
  def self.generate
    Generator.factory.generate
  end
end
