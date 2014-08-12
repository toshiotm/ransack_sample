class DialiesController < ApplicationController
  before_action :set_dialy, only: [:show, :edit, :update, :destroy]

  # GET /dialies
  # GET /dialies.json
  def index
    @q = Dialy.search(params[:q])
    @dialies = @q.result(distinct: true)
  end

  # GET /dialies/1
  # GET /dialies/1.json
  def show
  end

  # GET /dialies/new
  def new
    @dialy = Dialy.new
  end

  # GET /dialies/1/edit
  def edit
  end

  # POST /dialies
  # POST /dialies.json
  def create
    @dialy = Dialy.new(dialy_params)

    respond_to do |format|
      if @dialy.save
        format.html { redirect_to @dialy, notice: 'Dialy was successfully created.' }
        format.json { render :show, status: :created, location: @dialy }
      else
        format.html { render :new }
        format.json { render json: @dialy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dialies/1
  # PATCH/PUT /dialies/1.json
  def update
    respond_to do |format|
      if @dialy.update(dialy_params)
        format.html { redirect_to @dialy, notice: 'Dialy was successfully updated.' }
        format.json { render :show, status: :ok, location: @dialy }
      else
        format.html { render :edit }
        format.json { render json: @dialy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dialies/1
  # DELETE /dialies/1.json
  def destroy
    @dialy.destroy
    respond_to do |format|
      format.html { redirect_to dialies_url, notice: 'Dialy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialy
      @dialy = Dialy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dialy_params
      params.require(:dialy).permit(:title, :body)
    end
end
