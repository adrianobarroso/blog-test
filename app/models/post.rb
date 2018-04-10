class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content_md, presence: true

  def md_to_html
    Markdown.new(content_md).to_html
  end
end
