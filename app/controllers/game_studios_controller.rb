class GameStudiosController < ApplicationController
  before_action :set_game_studio, only: [:show, :edit, :update, :destroy]

  # GET /game_studios
  # GET /game_studios.json
  def index
    @game_studios = GameStudio.all
  end

  # GET /game_studios/1
  # GET /game_studios/1.json
  def show
  end

  # GET /game_studios/new
  def new
    @game_studio = GameStudio.new
  end

  # GET /game_studios/1/edit
  def edit
  end

  # POST /game_studios
  # POST /game_studios.json
  def create
    @game_studio = GameStudio.new(game_studio_params)

    respond_to do |format|
      if @game_studio.save
        format.html { redirect_to @game_studio, notice: 'Game studio was successfully created.' }
        format.json { render :show, status: :created, location: @game_studio }
      else
        format.html { render :new }
        format.json { render json: @game_studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_studios/1
  # PATCH/PUT /game_studios/1.json
  def update
    respond_to do |format|
      if @game_studio.update(game_studio_params)
        format.html { redirect_to @game_studio, notice: 'Game studio was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_studio }
      else
        format.html { render :edit }
        format.json { render json: @game_studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_studios/1
  # DELETE /game_studios/1.json
  def destroy
    @game_studio.destroy
    respond_to do |format|
      format.html { redirect_to game_studios_url, notice: 'Game studio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_studio
      @game_studio = GameStudio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_studio_params
      params.require(:game_studio).permit(:name, :location)
    end
end
