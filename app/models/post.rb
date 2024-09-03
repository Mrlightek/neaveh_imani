class Post < ApplicationRecord
	has_one_attached :post_image

	# Method to return the URL of the attached profile picture
  def post_image_url
    Rails.application.routes.url_helpers.rails_blob_url(post_image, only_path: true) if post_image.attached?
  end
end