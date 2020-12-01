class Cli

    def start
        puts "---------------------------------------------"
        puts "---------- Welcome to CryptoStats! ----------"
        puts "---------------------------------------------"
        puts ""
        puts " ~~> fetching data from CoinMarketCap API..."
        puts " ~~> loading the top 100 cryptocurrencies..."
        binding.pry
        Api.load_data
    end

    def main_menu
        
    end


end