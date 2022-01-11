class MustsController < ApplicationController
  before_action :set_must, only: %i[ show edit update destroy ]

  # GET /musts or /musts.json
  def index
    @musts = Must.all.sort_by{|m| m.average_rating}.reverse
  end

  # GET /musts/1 or /musts/1.json
  def show
  end

  # GET /musts/new
  def new
    @must = Must.new
  end

  # GET /musts/1/edit
  def edit
  end

  # POST /musts or /musts.json
  def create
    @must = Must.new(must_params)

    respond_to do |format|
      if @must.save
        format.html { redirect_to @must, notice: "Must was successfully created." }
        format.json { render :show, status: :created, location: @must }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @must.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musts/1 or /musts/1.json
  def update
    respond_to do |format|
      if @must.update(must_params)
        format.html { redirect_to @must, notice: "Must was successfully updated." }
        format.json { render :show, status: :ok, location: @must }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @must.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musts/1 or /musts/1.json
  def destroy
    @must.destroy
    respond_to do |format|
      format.html { redirect_to musts_url, notice: "Must was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_must
      @must = Must.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def must_params
      params.require(:must).permit(:name, :manufacturer, :volume, :price)
    end
end
