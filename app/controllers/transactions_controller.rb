class TransactionsController < ApplicationController
  def index
  end

  def import_file
    file = params[:file]
    file = File.open(file.path, 'r')
    ImportFileServices::ParserAndImportFileService.call(file)
    redirect_to transactions_path, notice: "Transactions saved!"
  end
end
