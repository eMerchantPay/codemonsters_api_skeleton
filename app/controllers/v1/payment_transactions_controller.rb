module V1
  class PaymentTransactionsController < ApplicationController

    def create
      ##TODO check payment_transaction.rb
    end

    def index
    end

    private

    def payment_transaction_params
      params.require(:payment_transaction).permit(:card_number,
                                                  :cvv,
                                                  :card_holder,
                                                  :email,
                                                  :amount,
                                                  :address,
                                                  :usage,
                                                  :transaction_type,
                                                  :expiration_date,
                                                  :reference_id)
    end
  end
end
