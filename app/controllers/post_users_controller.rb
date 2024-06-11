class PostUsersController < ApplicationController
  before_action :set_post_user, only: %i[ show edit update destroy ]

  # GET /post_users or /post_users.json
  def index
    @post_users = PostUser.all
  end

  # GET /post_users/1 or /post_users/1.json
  def show
  end

  # GET /post_users/new
  def new
    @post_user = PostUser.new
  end

  # GET /post_users/1/edit
  def edit
  end

  # POST /post_users or /post_users.json
  def create
    @post_user = PostUser.new(post_user_params)

    respond_to do |format|
      if @post_user.save
        format.html { redirect_to post_user_url(@post_user), notice: "Post user was successfully created." }
        format.json { render :show, status: :created, location: @post_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_users/1 or /post_users/1.json
  def update
    respond_to do |format|
      if @post_user.update(post_user_params)
        format.html { redirect_to post_user_url(@post_user), notice: "Post user was successfully updated." }
        format.json { render :show, status: :ok, location: @post_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_users/1 or /post_users/1.json
  def destroy
    @post_user.destroy!

    respond_to do |format|
      format.html { redirect_to post_users_url, notice: "Post user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_user
      @post_user = PostUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_user_params
      params.require(:post_user).permit(:post_id, :User_id)
    end
end
