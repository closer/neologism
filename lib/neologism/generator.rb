module Neologism
  class Generator
    @@prefixes   ||= %w|un in|
    @@suffixes   ||= %w|ed|
    @@vowels     ||= %w|b c d f g h j k l m n p q r s t v w x y z| + %w|ch ck|
    @@consonants ||= %w|a e i o u | + %w|ea oa er|

    def initialize
      @generated = nil
    end

    def generate length = rand(5)
      @generated = prefix + length.times.map { syllable }.join + suffix
    end

    def prefix
      @@prefixes[rand(@@prefixes.size)]
    end

    def syllable
      @@vowels[rand(@@vowels.size)] + @@consonants[rand(@@consonants.size)]
    end

    def suffix
      @@suffixes[rand(@@suffixes.size)]
    end
  end
end
