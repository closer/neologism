require "neologism/version"
require "neologism/generator"

module Neologism
  def self.generate
    (@single_generator ||= Generator.new).generate
  end
end
