class CryptoStats
    @@all = []

    def initialize(attributes)
        attributes.each do |key, value| 
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
            @@all << self
        end
    end

    def self.all
        @@all.uniq
    end
end