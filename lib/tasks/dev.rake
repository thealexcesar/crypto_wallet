namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do # Block yield calling.
    if Rails.env.development?
      show_spinner("deletando"){   %x(rails db:drop)}
      show_spinner("criando  "){ %x(rails db:create)}
      show_spinner("migrando "){%x(rails db:migrate)}
      show_spinner("populando"){   %x(rails db:seed)}
    end
  end
  def show_spinner(msg)
    spinner = TTY::Spinner.new("[:spinner] #{msg} db... ")
    spinner.auto_spin
    yield
    spinner.success("sucesso.")
  end
end
