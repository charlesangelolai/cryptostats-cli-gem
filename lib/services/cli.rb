class Cli

    def start
        puts "---------------------------------------------"
        puts "---------- Welcome to CryptoStats! ----------"
        puts "---------------------------------------------"
        puts ""
        puts " ~~> fetching data from CoinMarketCap API..."
        puts " ~~> loading the top 100 cryptocurrencies..."
        Api.load_data
        main_menu
    end

    def main_menu
        col1 = 0
        col2 = 25
        col3 = 50
        col4 = 75

        puts ""
        puts " --- Top 100 Cryptocurrencies --- "
        puts ""
        while col1 < 25
            puts " #{col1 + 1}. #{CryptoStats.all[col1].symbol.upcase} \t\t #{col2 + 1}. #{CryptoStats.all[col2].symbol.upcase} \t\t #{col3 + 1}. #{CryptoStats.all[col3].symbol.upcase} \t\t #{col4 + 1}. #{CryptoStats.all[col4].symbol.upcase}"
            
            col1 += 1
            col2 += 1
            col3 += 1
            col4 += 1
        end

        puts ""

        main_menu_options
    end

    def main_menu_options
        print "Enter the Cryptocurrency number to view more details: "
        option = get_input
        option = option.to_i - 1

        if option < 0 || option > 99
            puts "Invalid entry. Please try again..."
            main_menu_options
        else
            puts ""
            CryptoStats.all[option].display_stats
            puts ""
            exit?
        end
    end

    def get_input
        gets.chomp
    end

    def exit?
        print "Would you like to exit the program? (Y/N) "
        exit_option = get_input

        if exit_option == "Y"
            main_menu
        elsif exit_option == "N"
            puts ""
            puts "Closing program..."
            puts ""
        else
            puts ""
            puts "Invalid entry! Closing program.."
            puts ""
        end
    end
end