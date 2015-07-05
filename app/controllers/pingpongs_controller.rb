class PingpongsController < ApplicationController
  before_action :set_pingpong, only: [:show, :edit, :update, :destroy]

  def index
    @pingpongs = Pingpong.all
  end

  def show
  end

  def new
    @pingpong = Pingpong.new
  end

  def edit
  end

  def create
    @pingpong = Pingpong.new(pingpong_params)
    if @pingpong.save
      redirect_to @pingpong
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @pingpong.update(pingpong_params)
        format.html { redirect_to @pingpong, notice: 'Pingpong was successfully updated.' }
        format.json { render :show, status: :ok, location: @pingpong }
      else
        format.html { render :edit }
        format.json { render json: @pingpong.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pingpong.destroy
    respond_to do |format|
      format.html { redirect_to pingpongs_url, notice: 'Pingpong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pingpong
      @pingpong = Pingpong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pingpong_params
      params.require(:pingpong).permit(:name)
    end
end
