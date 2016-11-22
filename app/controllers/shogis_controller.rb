class ShogisController < ApplicationController
  before_action :set_shogi, only: [:show, :edit, :update, :destroy]

  # GET /shogis
  # GET /shogis.json
  def index
    @shogis = Shogi.all
  end

  # GET /shogis/1
  # GET /shogis/1.json
  def show
    @comments = @shogi.comments.all
    @comment = @shogi.comments.build
  end

  # GET /shogis/new
  def new
    @shogi = Shogi.new
  end

  # GET /shogis/1/edit
  def edit
  end

  # POST /shogis
  # POST /shogis.json
  def create
    @shogi = Shogi.new(shogi_params)

    respond_to do |format|
      if @shogi.save
        format.html { redirect_to @shogi, notice: 'Shogi was successfully created.' }
        format.json { render :show, status: :created, location: @shogi }
      else
        format.html { render :new }
        format.json { render json: @shogi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shogis/1
  # PATCH/PUT /shogis/1.json
  def update
    respond_to do |format|
      if @shogi.update(shogi_params)
        format.html { redirect_to @shogi, notice: 'Shogi was successfully updated.' }
        format.json { render :show, status: :ok, location: @shogi }
      else
        format.html { render :edit }
        format.json { render json: @shogi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shogis/1
  # DELETE /shogis/1.json
  def destroy
    @shogi.destroy
    respond_to do |format|
      format.html { redirect_to shogis_url, notice: 'Shogi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shogi
      @shogi = Shogi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shogi_params
      params.require(:shogi).permit(:Player, :FavoriteStrategy, :picture)
    end
end
