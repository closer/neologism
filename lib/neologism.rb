require "neologism/version"

module Neologism
  def self.generate length=(rand(5) + 3)
    alph = ('a'...'z').to_a
    length.times.map do
      alph[rand(alph.size)]
    end.join
  end
end
