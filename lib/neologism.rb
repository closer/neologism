require "neologism/version"
require "neologism/generator"

module Neologism
  def self.generate
    Generator.new.generate
  end
end
