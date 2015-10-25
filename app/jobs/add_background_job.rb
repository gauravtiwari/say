class AddBackgroundJob < ActiveJob::Base
  queue_as :uploader

  def perform(post_id)
    if Post.where(id: post_id).present?
      @post = Post.find(post_id)
      @post.background = File.open(Backgrounds::Random.new.get)
      @post.save
    else
      return false
    end
  end

end