# app/services/paypal/payment_service.rb
class Paypal::PaymentService
  def initialize
    @client = PayPal::PayPalClient.new
  end

  def create_order(amount, currency)
    request = PayPalCheckoutSdk::Orders::OrdersCreateRequest::new
    request.request_body({
      intent: 'CAPTURE',
      purchase_units: [
        {
          amount: {
            value: amount,
            currency_code: currency
          }
        }
      ]
    })

    @client.execute(request)
  end

  def capture_order(order_id)
    request = PayPalCheckoutSdk::Orders::OrdersCaptureRequest::new(order_id)
    @client.execute(request)
  end
end
