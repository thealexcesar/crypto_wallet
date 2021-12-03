module ApplicationHelper
  def date_us(date_default)
    date_default.strftime("%m/%d/%Y/%y")
  end
end
