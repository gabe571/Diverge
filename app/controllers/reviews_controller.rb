class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.where(game_id: params[:game_id]).all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])
  end

  # GET /reviews/new
  def new
   @game = Game.find(params[:game_id])
   @review = current_user.reviews.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = current_user.reviews.new(review_params)
    @game = Game.find(params[:game_id])
    @review.game_id = @game.id

    respond_to do |format|
      if @review.save
        format.html { redirect_to game_reviews_path(@review), notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
  # <%= link_to "New Review", new_game_review_path(game_id: @game.id) %>


  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    # @review = current_user.reviews.update(review_params)
    # @game = Game.find(params[:game_id])
    # @review.game_id = @game.id

    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to game_reviews_path(@review), notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to game_reviews_path(@review), notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def correct_user
    @review = current_user.reviews.find_by(id: params[:id])
    redirect_to game_reviews_path, notice:" Not Authorized to Edit This Review" if @review.nil?
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @game = Game.find params[:id]
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:reviewed_game, :rating, :game_id, :user_id)
    end
  end