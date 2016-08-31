module ApplicationHelper
  def post_img(post)
    image_tag(post.image_url)
  end
end
