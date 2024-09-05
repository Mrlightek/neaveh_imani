PayPal::SandboxClientID = ENV['PAYPAL_SANDBOX_CLIENT_ID']
PayPal::SandboxSecret = ENV['PAYPAL_SANDBOX_SECRET']
PayPal::LiveClientID = ENV['PAYPAL_LIVE_CLIENT_ID']
PayPal::LiveSecret = ENV['PAYPAL_LIVE_SECRET']

PayPal::Mode = Rails.env.production? ? 'live' : 'sandbox'