class FirstsController < ApplicationController
  before_action :set_first, only: [:show, :edit, :update, :destroy]

  # GET /firsts
  # GET /firsts.json
  def index
    @firsts = First.all
  end

  # GET /firsts/1
  # GET /firsts/1.json
  def show
  end

  # GET /firsts/new
  def new
    @first = First.new
  end

  # GET /firsts/1/edit
  def edit
  end

  # POST /firsts
  # POST /firsts.json
  def create
    @first = First.new(first_params)

    respond_to do |format|
      if @first.save
        format.html { redirect_to @first, notice: 'First was successfully created.' }
        format.json { render :show, status: :created, location: @first }
      else
        format.html { render :new }
        format.json { render json: @first.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firsts/1
  # PATCH/PUT /firsts/1.json
  def update
    respond_to do |format|
      if @first.update(first_params)
        format.html { redirect_to @first, notice: 'First was successfully updated.' }
        format.json { render :show, status: :ok, location: @first }
      else
        format.html { render :edit }
        format.json { render json: @first.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firsts/1
  # DELETE /firsts/1.json
  def destroy
    @first.destroy
    respond_to do |format|
      format.html { redirect_to firsts_url, notice: 'First was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first
      @first = First.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_params
      params.require(:first).permit(:name)
    end
end
