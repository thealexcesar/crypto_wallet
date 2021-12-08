module ApplicationHelper
  def head_title
    I18n.locale == :en ? 'crypto Wallet' : 'Carteira Cripto'
  end

  def current_locale
    I18n.locale == :en ? 'United States' : 'Brasil'
  end

  def translate
    I18n.locale == :en ? 'translate to english' : 'traduzir para inglês'
  end

  ## def date_us(date_default)
  #   date_default.strftime("%m/%d/%Y")
  # end

  def where_am_i
    if Rails.env.development?
      I18n.locale == :en ? "You are in development evironment." : "Você está em ambiente de desenvolvimento."
      # I18n.default_locale = "pt-BR"
    elsif Rails.env.Production?
      I18n.locale == :en ? "You are in production evironment." : "Você está em ambiente de produção."
      # I18n.default_locale = :en
    else
      "You are in test evironment!"
    end
  end
end
