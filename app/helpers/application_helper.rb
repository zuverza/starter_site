module ApplicationHelper
 def markdown
 	 markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
	 :autolink => true, :space_after_headers => true, :hard_wrap => true)
 end

end
