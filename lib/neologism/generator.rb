module Neologism
  class Generator
    def generate length=(rand(5) + 3)
      length.times.map { alphabets[rand(alphabets.size)] }.join
    end

    def alphabets
      @@aplhabets ||= ('a'...'z').to_a
    end
  end
end
