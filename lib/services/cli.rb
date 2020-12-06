class Cli

    def start
        puts ""
        puts "---------------------------------------------".yellow
        puts "---------- Welcome to CryptoStats! ----------".yellow
        puts "---------------------------------------------".yellow
        puts ""
        puts " ~~> fetching data from CoinGecko...".blue
        sleep(1)
        puts " ~~> loading the top 100 cryptocurrencies...".blue
        sleep(1)
        Api.load_data
        main_menu
    end

    def main_menu
        col1 = 0
        col2 = 25
        col3 = 50
        col4 = 75

        standardize_crypto_name_length

        puts ""
        puts " --- Top 100 Cryptocurrencies --- ".green
        puts ""
        while col1 < 25
            puts " #{col1 + 1}. #{CryptoStats.all[col1].name} \t\t #{col2 + 1}. #{CryptoStats.all[col2].name} \t\t #{col3 + 1}. #{CryptoStats.all[col3].name} \t\t #{col4 + 1}. #{CryptoStats.all[col4].name}"
            
            col1 += 1
            col2 += 1
            col3 += 1
            col4 += 1
        end

        puts ""

        main_menu_options
    end

    def main_menu_options
        print "Enter the Cryptocurrency number to view more details or type 'exit' to leave the program: ".green
        option = get_input

        if option == "exit"
            puts ""
            puts "Closing program..."
            puts ""
        elsif option.to_i - 1 < 0 || option.to_i - 1 > 99
            puts "Invalid entry. Please try again...".red
            puts ""
            main_menu_options
        else
            puts ""
            CryptoStats.all[option.to_i - 1].display_stats
            puts ""
            puts "Press the 'Enter' key to continue...".green
            gets.chomp
            puts " ~~> fetching data from CoinGecko...".blue
            sleep(1)
            puts " ~~> loading the top 100 cryptocurrencies...".blue
            sleep(1)
            main_menu
        end
    end

    def get_input
        gets.chomp
    end

    # def exit?
    #     print "Would you like to exit the program? (Y/N) ".green
    #     exit_option = get_input

    #     if exit_option == "Y"
    #         puts ""
    #         puts "Closing program..."
    #         puts ""
    #     elsif exit_option == "N"
    #         main_menu
    #     else
    #         puts "Invalid entry! Please try again..".red
    #         puts ""
    #         exit?
    #     end
    # end

    def standardize_crypto_name_length
        max_length = 25

        CryptoStats.all.each do |crypto|
            while crypto.name.length < max_length
                crypto.name += " "
            end
        end
    end
end
