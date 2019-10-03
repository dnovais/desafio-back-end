class TransactionsController < ApplicationController
  def index
  end

  def import_file
    redirect_to transactions_path, notice: "Transactions saved!"
  end
end
