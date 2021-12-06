module ApplicationHelper
  def date_us(date_default)
    date_default.strftime("%m/%d/%Y")
  end

  def where_am_i
    if Rails.env.development?
      "You are in evelopment evironment!"
    elsif Rails.env.Production?
      "You are in production evironment!"
    else
      "You are in test evironment!"
    end
  end
end
