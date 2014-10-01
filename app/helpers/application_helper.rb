module ApplicationHelper
  def standard_date(datetime)
    datetime.strftime("#{t('month')} #{datetime.day.ordinalize}")
  end
end
