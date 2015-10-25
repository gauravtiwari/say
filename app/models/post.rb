class Post < ActiveRecord::Base
  mount_uploader :background, BackgroundUploader
end
