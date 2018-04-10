class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content_md, presence: true

  def md_to_html
    options = {
        autolink: true,
        space_after_headers: true,
        fenced_code_blocks: true,
        underline: true,
        highlight: true,
        footnotes: true,
        tables: true,
        link_attributes: {rel: 'nofollow', target: "_blank"}
    }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    markdown.render(content_md)
  end
end
