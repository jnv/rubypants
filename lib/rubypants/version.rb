class RubyPants < String
  module VERSION
    MAJOR = 0
    MINOR = 3
    TINY  = 0

    ARRAY = [MAJOR, MINOR, TINY].compact
    STRING = ARRAY.join('.')
  
    def self.to_a; ARRAY end
    def self.to_s; STRING end
  end
end
