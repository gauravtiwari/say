class BackgroundUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :fog

  def process_uri(uri)
    return URI.parse(uri)
  end

  def store_dir
    "uploads"
  end

  # Limit possible extensions
  def extension_white_list
    %w(jpg jpeg gif png)
  end

end