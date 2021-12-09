module ApplicationHelper
  ## def date_us(date_default)
  #   date_default.strftime("%m/%d/%Y")
  def where_am_i
    if Rails.env.development?
      I18n.locale == :en ? "You are in development evironment." : "Você está em ambiente de desenvolvimento."
      # I18n.default_locale = "pt-BR"
    elsif Rails.env.production?
      I18n.locale == :en ? "You are in production evironment." : "Você está em ambiente de produção."
      # I18n.default_locale = :en
    else
      "You are in test evironment!"
    end
  end

  def greeting
    now = Time.now
    today = Date.today.to_time

    morning = today.beginning_of_day
    noon = today.noon
    evening = today.change( hour: 17 )
    tomorrow = today.tomorrow

    if (morning..noon).cover? now
      I18n.locale == :en ? 'Good Morning!' : 'Bom dia!'
    elsif (noon..evening).cover? now
      I18n.locale == :en ? 'Good Afternoon!' : 'Boa tarde!'
    else
      I18n.locale == :en ? 'Good Evening!' : 'Boa noite!'
    end
end
end