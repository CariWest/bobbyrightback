module BlogHelper

  def markdown(text)
    options = {
      :disable_indented_code_blocks => true,
      :autolink => true,
      :lax_spacing => true
    }
    markdown_as_html = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    markdown_as_html.render(text).html_safe
  end
end
