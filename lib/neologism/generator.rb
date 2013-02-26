module Neologism
  class Generator
    def self.factory *args
      new *args
    end

    def initialize length=nil
      @length = length || (rand(5) + 2)
    end

    def generate
      @length.times.map { syllable }.join
    end

    def prefix
    end

    def suffix
    end

    def syllable
      vowels[rand(vowels.size)] + consonants[rand(consonants.size)]
    end

    def vowels
      @@vowels ||= %w|b c d f g h j k l m n p q r s t v w x y z| + %w|ch ck|
    end

    def consonants
      @@consonants ||= %w|a e i o u |
    end

    def alphabets
      @@aplhabets ||= ('a'...'z').to_a
    end
  end
end
