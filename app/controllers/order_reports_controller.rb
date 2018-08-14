class OrderReportsController < ApplicationController
  before_action :set_order_report, only: [:show, :edit, :update, :destroy]

  # GET /order_reports
  # GET /order_reports.json
  def index
    @order_reports = OrderReport.all
  end

  # GET /order_reports/1
  # GET /order_reports/1.json
  def show
  end

  # GET /order_reports/new
  def new
    @order_report = OrderReport.new
  end

  # GET /order_reports/1/edit
  def edit
  end

  # POST /order_reports
  # POST /order_reports.json
  def create
    @order_report = OrderReport.new(order_report_params)

    respond_to do |format|
      if @order_report.save
        format.html { redirect_to @order_report, notice: 'Order report was successfully created.' }
        format.json { render :show, status: :created, location: @order_report }
      else
        format.html { render :new }
        format.json { render json: @order_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_reports/1
  # PATCH/PUT /order_reports/1.json
  def update
    respond_to do |format|
      if @order_report.update(order_report_params)
        format.html { redirect_to @order_report, notice: 'Order report was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_report }
      else
        format.html { render :edit }
        format.json { render json: @order_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_reports/1
  # DELETE /order_reports/1.json
  def destroy
    @order_report.destroy
    respond_to do |format|
      format.html { redirect_to order_reports_url, notice: 'Order report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_report
      @order_report = OrderReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_report_params
      params.require(:order_report).permit(:description, :date_time, :order_id, :user_id)
    end
end
