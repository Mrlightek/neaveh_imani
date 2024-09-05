# app/controllers/payments_controller.rb
class PaymentsController < ApplicationController
  def new
  end

  def create
    service = Paypal::PaymentService.new
    order = service.create_order(params[:amount], params[:currency])

    if order.result.status == 'CREATED'
      redirect_to order.result.links.find { |link| link.rel == 'approve' }.href
    else
      redirect_to root_path, alert: 'Payment failed.'
    end
  end

  def capture
    service = Paypal::PaymentService.new
    capture = service.capture_order(params[:order_id])

    if capture.result.status == 'COMPLETED'
      redirect_to root_path, notice: 'Payment completed successfully.'
    else
      redirect_to root_path, alert: 'Payment capture failed.'
    end
  end
end
