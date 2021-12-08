module ApplicationHelper
  ## def date_us(date_default)
  #   date_default.strftime("%m/%d/%Y")
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