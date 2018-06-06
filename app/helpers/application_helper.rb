module ApplicationHelper
   def full_title(page_title = "")
    page_title.nil? ? t("title") : page_title + " | " + t("title")
  end

  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
