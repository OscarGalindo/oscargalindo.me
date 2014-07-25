class PostCatsController < ApplicationController
  before_action :set_post_cat, only: [:show, :edit, :update, :destroy]

  # GET /post_cats
  # GET /post_cats.json
  def index
    @post_cats = PostCat.all
  end

  # GET /post_cats/1
  # GET /post_cats/1.json
  def show
  end

  # GET /post_cats/new
  def new
    @post_cat = PostCat.new
  end

  # GET /post_cats/1/edit
  def edit
  end

  # POST /post_cats
  # POST /post_cats.json
  def create
    @post_cat = PostCat.new(post_cat_params)

    respond_to do |format|
      if @post_cat.save
        format.html { redirect_to @post_cat, notice: 'Post cat was successfully created.' }
        format.json { render :show, status: :created, location: @post_cat }
      else
        format.html { render :new }
        format.json { render json: @post_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_cats/1
  # PATCH/PUT /post_cats/1.json
  def update
    respond_to do |format|
      if @post_cat.update(post_cat_params)
        format.html { redirect_to @post_cat, notice: 'Post cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_cat }
      else
        format.html { render :edit }
        format.json { render json: @post_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_cats/1
  # DELETE /post_cats/1.json
  def destroy
    @post_cat.destroy
    respond_to do |format|
      format.html { redirect_to post_cats_url, notice: 'Post cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_cat
      @post_cat = PostCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_cat_params
      params.require(:post_cat).permit(:post_id, :category_id)
    end
end
