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

    def display_stats
        puts "Image: #{self.image}"
        puts "ID: #{self.id}"
        puts "Symbol: #{self.symbol}"
        puts "Current Price: #{self.current_price}"
        puts "Market Cap: #{self.market_cap}"
        puts "Total Volume: #{self.total_volume}"
        puts "High (24hrs): #{self.high_24h}"
        puts "Low (24hrs): #{self.low_24h}"
        puts "Price Change (24hrs): #{self.price_change_24h}"
        puts "Percentage Change (24hrs): #{self.price_change_percentage_24h}"
        puts "Last Updated: #{self.last_updated}"
    end
end