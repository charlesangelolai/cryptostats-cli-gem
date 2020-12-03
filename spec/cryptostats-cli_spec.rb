RSpec.describe CryptoStats do
    if "has a version number" do
        expect(cryptostats-cli::VERSION).not_to be nil
    end

    it "does something useful" do
        expect(false).to eq(true)
    end
end