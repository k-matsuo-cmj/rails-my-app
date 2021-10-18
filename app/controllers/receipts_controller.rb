class ReceiptsController < ApplicationController
  def index
    @receipts = Receipt.all
  end

  def new
    @receipt = Receipt.new
    3.times { @receipt.receipt_details.build }
  end

  def create
  end
end
