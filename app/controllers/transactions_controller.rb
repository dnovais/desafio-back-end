class TransactionsController < ApplicationController
  include ApplicationHelper
  def index
    @transactions = Transaction.all
    @total_value = Finance::CalculateTotalService.call(@transactions)
    @transactions = @transactions.page(params[:page])
  end

  def import_file
    file = params[:file]
    file = file.open
    ImportFileServices::ParserAndImportFileService.call(file)
    redirect_to transactions_path, notice: "Transactions saved!"
  end
end
