class PaymentsController < ApplicationController
  def create
    @payment = Payment.new(payment_params)
    # {payment: { amount: 100,user_id: 67, adress: 'blabla', confirmed: true }}
  end

  private
  
  def payment_params
    params.require(:payment).permit(:address)
  end
end
