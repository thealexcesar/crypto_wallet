#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cadastrando moedas..."
coins = [ {
    coin_name:"Bitcoin", acronym:"BTC",
    url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fbitcoin%2Fcolor_icon.png&w=32&q=75"
  }, {
    coin_name:"Ethereum", acronym:"ETH",
    url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fethereum%2Fcolor_icon.png&w=32&q=75"
  }, {
    coin_name:"Binance Coin", acronym:"BNB",
    url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fbinance-coin%2Fcolor_icon.png&w=32&q=75"
  }, {
    coin_name:"Tether", acronym:"USDT",
    url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Ftether%2Fcolor_icon.png&w=32&q=75"
  }, {
    coin_name:"Solana", acronym:"SOL",
    url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fsolana%2Fcolor_icon.png&w=32&q=75"
    }, {
    coin_name:"Cardano", acronym:"ADA",
    url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fcardano%2Fcolor_icon.png&w=32&q=75"
  }, {
    coin_name:"USD Coin", acronym:"USDC",
    url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fusd-coin%2Fcolor_icon.png&w=32&q=75"
  }, {
    coin_name:"Axie Infinity", acronym:"AXS",
    url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Faxie-infinity%2Fcolor_icon.png&w=32&q=75"
  }
]
coins.each do |coin|
  Coin.find_or_create_by!(coin)
end
puts "Moedas cadastradas com sucesso."
