class MezagesController < ApplicationController
  before_action :set_mezage, only: [:show, :edit, :update, :destroy]

  # GET /mezages
  # GET /mezages.json
  def index
    @mezages = Mezage.all
  end

  # GET /mezages/1
  # GET /mezages/1.json
  def show
  end

  # GET /mezages/new
  def new
    @mezage = Mezage.new
  end

  # GET /mezages/1/edit
  def edit
  end

  # POST /mezages
  # POST /mezages.json
  def create
    @mezage = Mezage.new(mezage_params)

    respond_to do |format|
      if @mezage.save
        format.html { redirect_to @mezage, notice: 'Mezage was successfully created.' }
        format.json { render :show, status: :created, location: @mezage }
      else
        format.html { render :new }
        format.json { render json: @mezage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mezages/1
  # PATCH/PUT /mezages/1.json
  def update
    respond_to do |format|
      if @mezage.update(mezage_params)
        format.html { redirect_to @mezage, notice: 'Mezage was successfully updated.' }
        format.json { render :show, status: :ok, location: @mezage }
      else
        format.html { render :edit }
        format.json { render json: @mezage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mezages/1
  # DELETE /mezages/1.json
  def destroy
    @mezage.destroy
    respond_to do |format|
      format.html { redirect_to mezages_url, notice: 'Mezage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mezage
      @mezage = Mezage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mezage_params
      params.require(:mezage).permit(:name, :email, :company, :phone, :subject, :body)
    end
end
