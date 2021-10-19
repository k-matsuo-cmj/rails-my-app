class ReceiptsController < ApplicationController
  def index
    @receipts = Receipt.paginate(page: params[:page], per_page: 10)
  end

  def new
    @receipt = Receipt.new
    @receipt.receipt_details.build
  end

  def create
    @receipt = Receipt.new(receipt_params)
    if @receipt.save
      redirect_to :receipts
    else
      render 'receipts/new'
    end
  end

  def edit
    @receipt = Receipt.find(params[:id])
  end

  def update
    @receipt = Receipt.find(params[:id])
    if @receipt.update(receipt_params)
      # 削除ボタンが押された明細を削除する
      receipt_params[:receipt_details_attributes].each do |detail|
        if detail[1][:_destroy] != "false"
          @receipt.receipt_details.find(detail[1][:id]).destroy
        end
      end
      redirect_to :receipts
    else
      render 'receipts/edit'
    end
  end

  private
    def receipt_params
      params.require(:receipt).permit(:total_price, receipt_details_attributes: [:id, :name, :price, :quantity, :_destroy])
    end
end
