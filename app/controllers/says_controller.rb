class SaysController < ApplicationController
  before_action :set_say, only: [:show, :edit, :update, :destroy]

  # GET /says
  def index
    @says = Say.all
  end

  # GET /says/1
  def show
  end

  # GET /says/new
  def new
    @say = Say.new
  end

  # GET /says/1/edit
  def edit
  end

  # POST /says
  def create
    @say = Say.new(say_params)

    if @say.save
      redirect_to @say, notice: 'Say was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /says/1
  def update
    if @say.update(say_params)
      redirect_to @say, notice: 'Say was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /says/1
  def destroy
    @say.destroy
    redirect_to says_url, notice: 'Say was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_say
      @say = Say.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def say_params
      params[:say]
    end
end
