class CallDetailsController < ApplicationController
  before_action :set_call_detail, only: [:show, :edit, :update, :destroy]

#  def bytime
#      @call_details = CallDetail.where("start_time>= :start_time AND end_time<= :end_time",
#      {start_time: call_detail_start_time, end_time: call_detail_end_time})
#  end


  # GET /call_details
  # GET /call_details.json
  def index
    @call_details = CallDetail.search(params)
    #if (params[:start_time]) && (params[:end_time])
      #@call_details = CallDetail.search(params)
    #else
    #@call_details = CallDetail.all
  #end
  end

  # GET /call_details/1
  # GET /call_details/1.json
  def show
  end

  # GET /call_details/new
  def new
    @call_detail = CallDetail.new
  end

  # GET /call_details/1/edit
  def edit
  end

  # POST /call_details
  # POST /call_details.json
  def create
    @call_detail = CallDetail.new(call_detail_params)

    respond_to do |format|
      if @call_detail.save
        format.html { redirect_to @call_detail, notice: 'Call detail was successfully created.' }
        format.json { render :show, status: :created, location: @call_detail }
      else
        format.html { render :new }
        format.json { render json: @call_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_details/1
  # PATCH/PUT /call_details/1.json
  def update
    respond_to do |format|
      if @call_detail.update(call_detail_params)
        format.html { redirect_to @call_detail, notice: 'Call detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_detail }
      else
        format.html { render :edit }
        format.json { render json: @call_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_details/1
  # DELETE /call_details/1.json
  def destroy
    @call_detail.destroy
    respond_to do |format|
      format.html { redirect_to call_details_url, notice: 'Call detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_detail
      @call_detail = CallDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_detail_params
      params.require(:call_detail).permit(:call_id, :word, :start_time, :end_time)
    end
end
