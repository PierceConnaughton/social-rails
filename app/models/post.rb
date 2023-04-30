class Post < ApplicationRecord
    belongs_to :account
  
    mount_uploader :image, PostImageUploader

    scope :active, -> {where active: true}

    has_one_attached :image

    before_create :set_active
    def set_active
      self.active = true
    end
  end
  