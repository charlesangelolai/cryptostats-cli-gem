class Api

    def self.base_url
        "pro-api.coinmarketcap.com/v1/cryptocurrency"
    end

    def self.load_data
        load_cryptocurrency
    end

    def self.load_cryptocurrency
        response = RestClient.get 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY='
        data = JSON.parse(response.body)

        data["data"].each do |crypto_data|
            CryptoStats.new(crypto_data)
        end
    end
end