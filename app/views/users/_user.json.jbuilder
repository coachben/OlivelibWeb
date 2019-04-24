json.extract! user, :id, :email, :name, :stripe_id, :stripe_subscription_id, :card_last4, :card_exp_month, :card_exp_year, :card_type, :admin, :subscr, :created_at, :updated_at
json.url user_url(user, format: :json)
