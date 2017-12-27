json.data do
  json.partial! 'payment', collection: @payments, as: :payment
end
