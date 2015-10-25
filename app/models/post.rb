class Post < ActiveRecord::Base
  validates_presence_of :text, :user_name, :user_id
  mount_uploader :background, BackgroundUploader
end
