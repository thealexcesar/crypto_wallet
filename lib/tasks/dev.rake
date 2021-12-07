namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do # Yield.
    if Rails.env.development?
      show_spinner("deletando"){   %x(rails db:drop)}
      show_spinner("criando  "){ %x(rails db:create)}
      show_spinner("migrando "){%x(rails db:migrate)}
      %x(rails dev:mining)
      %x(rails dev:coin)
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  desc "Cadastra as moedas"
  task coin: :environment do
    show_spinner("Cadastrando moedas") do
      coins = [
        {
          coin_name:"Bitcoin", acronym:"BTC",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fbitcoin%2Fcolor_icon.png&w=32&q=75",
          mining: Mining.all.sample
          # ou mining: Mining.find_by(acronym: 'PoW')
        }, {
          coin_name:"Ethereum", acronym:"ETH",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fethereum%2Fcolor_icon.png&w=32&q=75",
          mining: Mining.all.sample
        }, {
          coin_name:"Binance Coin", acronym:"BNB",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fbinance-coin%2Fcolor_icon.png&w=32&q=75",
          mining: Mining.all.sample
        }, {
          coin_name:"Tether", acronym:"USDT",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Ftether%2Fcolor_icon.png&w=32&q=75",
          mining: Mining.all.sample
        }, {
          coin_name:"Solana", acronym:"SOL",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fsolana%2Fcolor_icon.png&w=32&q=75",
          mining: Mining.all.sample
        }, {
          coin_name:"Cardano", acronym:"ADA",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fcardano%2Fcolor_icon.png&w=32&q=75",
          mining: Mining.all.sample
        }, {
          coin_name:"USD Coin", acronym:"USDC",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Fusd-coin%2Fcolor_icon.png&w=32&q=75",
          mining: Mining.all.sample
        }, {
          coin_name:"Axie Infinity", acronym:"AXS",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Faxie-infinity%2Fcolor_icon.png&w=32&q=75",
          mining: Mining.all.sample
        }, {
          coin_name:"Algorand", acronym:"ALGO",
          url_image:"https://crypto.com/price/_next/image.png?url=https%3A%2F%2Fstatic.crypto.com%2Ftoken%2Ficons%2Falgorand%2Fcolor_icon.png&w=48&q=75",
          mining: Mining.all.sample
        }
      ]
      # Same each do
      coins.each { |c| Coin.find_or_create_by!(c) }
    end
  end

  desc "Cadastra os tipos de mineracao"
  task mining: :environment do
    show_spinner("Cadastrando tipos de mineracao") do
      minings = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"}
      ]
      minings.each { |m| Mining.find_or_create_by!(m) }
    end
  end

  private
  def show_spinner(msg, msg_end = "sucesso.")
    spinner = TTY::Spinner.new("[:spinner] #{msg} db... ")
    spinner.auto_spin
    yield
    spinner.success(msg_end)
  end
end
