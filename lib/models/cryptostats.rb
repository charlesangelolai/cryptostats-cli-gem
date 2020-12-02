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
        puts "-------------------------------------------- Crypto Stats --------------------------------------------"
        #crypto_logo(self.image)
        puts "ID: #{self.id.capitalize}"
        puts "Symbol: #{self.symbol.upcase}"
        puts "Current Price: $#{self.current_price}"
        puts "Market Cap: $#{self.market_cap}"
        puts "Total Volume: $#{self.total_volume}"
        puts "High (24hrs): $#{self.high_24h}"
        puts "Low (24hrs): $#{self.low_24h}"
        puts "Price Change (24hrs): $#{self.price_change_24h}"
        puts "Percentage Change (24hrs): #{self.price_change_percentage_24h}%"
        puts "Last Updated: #{self.last_updated}"
        puts "------------------------------------------------------------------------------------------------------"
    end

    # def crypto_logo(image)
    #     binding.pry
    #     ascii = ASCII_Image.new(image)
    #     ascii.build(20)
    # end
end
