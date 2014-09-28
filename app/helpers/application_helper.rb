module ApplicationHelper


  @@markdown = Redcarpet::Markdown.new Redcarpet::Render::HTML

  def markdown(text)
    @@markdown.render(text).html_safe
  end

end
