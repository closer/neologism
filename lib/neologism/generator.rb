module Neologism
  class Generator
    @@prefixes   ||= %w|un in|
    @@suffixes   ||= %w|ed ch ck|
    @@vowels     ||= %w|b c d f g h j k l m n p q r s t v w x y z|
    @@consonants ||= %w|a e i o u y| + %w|ea oa er|

    def initialize
      @generated = nil
    end

    def generate length = rand(5) + 1
      @generated = prefix + length.times.map { syllable }.join + suffix
    end

    def prefix
      rand > 0.9 ? @@prefixes[rand(@@prefixes.size)] : ''
    end

    def syllable
      @@vowels[rand(@@vowels.size)] + @@consonants[rand(@@consonants.size)]
    end

    def suffix
      rand > 0.9 ? @@suffixes[rand(@@suffixes.size)] : ''
    end
  end
end
