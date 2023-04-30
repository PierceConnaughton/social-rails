class Post < ApplicationRecord
    belongs_to :account
  
    mount_uploader :image, PostImageUploader

    has_one_attached :image

  end
  