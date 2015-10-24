class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token, only: [:create, :update]
  before_filter :verify_slack_token, except: [:index, :show]

  # GET /posts
  def index
    @posts = Post.all.to_a.map{|p| {id: p.id, text: p.text, name: p.user_name} }

    respond_to do |format|
      format.html
      format.json {render json: @posts}
    end
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    render nothing: true, status: :ok and return unless responder.respond?

    if params[:command].present?
      @post = Post.create(post_params)
      render text: responder.response.to_s
    else
      render json: { text: responder.response.to_s }
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.permit(:timestamp, :user_id, :user_name, :text)
    end

    # Setup slack responder
    def responder
      @responder ||= Slack::Response.new(params[:text])
    end

    def verify_slack_token
      render nothing: true, status: :forbidden and return unless Slack::TOKENS.include?(params[:token])
    end
end
