class ReceiptsController < ApplicationController
  def index
    @receipts = Receipt.all
  end

  def new
    @receipt = Receipt.new
    3.times { @receipt.receipt_details.build }
  end

  def create
    @receipt = Receipt.new(receipt_params)
    if @receipt.save
      redirect_to :receipts
    else
      render 'receipts/new'
    end
  end

  private
    def receipt_params
      params.require(:receipt).permit(:total_price, receipt_details_attributes: [:name, :price, :quantity])
    end
end
