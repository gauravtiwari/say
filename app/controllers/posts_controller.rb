class PostsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :verify_slack_token, except: [:index, :show]

  # GET /posts
  def index
    @posts = Post.all
    respond_to do |format|
      format.html
    end
  end

  # GET /posts/user
 def user
  if params[:command].present?
    @posts = Post.where(user_id: params[:user_id]).order(id: :desc)
    render text: "*Here are your past quotes:* \n" + @posts.map{
      |p|  "#{p.id}. " + p.text.delete("\n")
    }.join("\n")
  else
    render nothing: true, status: :forbidden
  end
 end

  # POST /posts
  def create
    render nothing: true, status: :ok and return unless responder.respond?
    @post = Post.new(post_params)
    if params[:command].present? && @post.save
      AddBackgroundJob.perform_later(@post.id)
      render text: responder.response.to_s
    else
      render json: { text: responder.response.to_s }
    end

  end

  private

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.permit(:user_id, :user_name, :text)
    end

    # Setup slack responder
    def responder
      @responder ||= Slack::Response.new(params[:text])
    end

    def verify_slack_token
      render nothing: true, status: :forbidden and return unless Slack::TOKENS.include?(params[:token])
    end
end
