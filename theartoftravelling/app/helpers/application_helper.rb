module ApplicationHelper
  def language_selector
    if I18n.locale == :en
      link_to "Ro", url_for(locale: 'ro')
    else
      link_to "En", url_for(locale: 'en')
    end
  end
  def submit_or_cancel(form, name = "Cancel")
    form.submit + " or " + link_to(name, 'javascript:history.go(-1);', class: 'cancel')
  end
  def verbose_date(date)
    date.strftime('%B %d %Y')
  end
end
