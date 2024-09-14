class User < ApplicationRecord
  include UserAssociations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one_attached :profile_pic
         has_one :dashboard
         has_one :application_setting

         # Method to return the URL of the attached profile picture
  def profile_pic_url
    Rails.application.routes.url_helpers.rails_blob_url(profile_pic, only_path: true) if profile_pic.attached?
  end
end
