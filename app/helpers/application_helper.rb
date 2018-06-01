module ApplicationHelper
   def full_title(page_title = '')
    page_title.nil? ? t("title") : page_title + " | " + t("title")
  end
end
