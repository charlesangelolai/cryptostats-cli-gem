# https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=dff57c31-f1ac-4e58-ac07-74bd976ede24

class Api

    def self.base_url
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false"
    end

    def self.load_data
        load_cryptocurrency
    end

    def self.load_cryptocurrency
        response = RestClient.get base_url
        data = JSON.parse(response.body)

        data.each do |crypto_data|
            CryptoStats.new(crypto_data)
        end
    end
end