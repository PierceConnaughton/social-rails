class PostImageUploader < CarrierWave::Uploader::Base
  # Choose what kind of storage to use for this uploader
  storage :fog

  # Set the path where uploaded files will be stored.
  # This is a Rails-specific setting.
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
