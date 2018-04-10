class ConvertMarkdownJob < ApplicationJob
  queue_as :default

  def perform(id)
    post = Post.find(id)
    post.update(content_html: post.md_to_html)
  end
end
